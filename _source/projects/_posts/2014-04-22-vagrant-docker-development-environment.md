---
layout: post
title: "Vagrant and Docker Development Environment for PHP, TYPO3 and MySQL"
date: 2014-04-22
banner: workspace.jpg
---

Over Easter I managed to get my new development environment rolling.
This replaced my ages-old local PHP development system, a classic MAMP stack, which I need(ed) in TYPO3/PHP-based projects.
With a new laptop (ftw! my 2011 MBA replaced by a non-retina 2013 MBP with 16GB/1TB) I decided to finally virtualize my development system as much as possible.

Partly out of the need to get a working clone of our rather complex chroot-based dev system at T-Systems and in part out of my desire to keep anything related to PHP/Apache/MySQL off my machine.

I'll highlight some obstacles and show how this thing is structured so maybe someone finds some value in it and I also have a reminder for myself.

## Challenge

My starting point was a rather complicated system of several chroot buckets running different parts of our TYPO3/FLOW/PHP/MySQL system.
The whole thing separates into a TYPO3 back-end to edit content, several TYPO3-based front-ends, a FLOW/FLOW3 based middleware, some intermediate TYPO3 publishing containers, several MySQL hosts and a Memcached server.
Potentially there could be a Solr search server attached as well, but this was out of scope.

Each of these components needs a separate nginx config, some need a special PHP environment and they all are connected to our MySQL and Memcached servers.

Up until now my local dev system consisted only of the bare minimum, namely the TYPO3 back-end based on Apache and mod_php, a MySQL server and a Memcached server all running locally (via homebrew) and serving to port 80.
Middleware, publishing system and front-ends are almost impossible to set up this way.

## Result

In Q3 last year I attempted to virtualize the whole thing into [Vagrant][vagrant] boxes using Chef - what a hassle!
I gave up after doing this on the side for about three days because I could not estimate the remaining efforts necessary to write recipes.

A while back I read about [Docker][docker] and started playing around with it - just like everybody else apparently.

I'm on OSX, so first I went with the boot2docker image which seemed like a good idea but ended up using a very simple Vagrant box as the base because I had more control over what was going on, especially concerning shared directories.
Also Vagrant boxes are simple to share for co-workers.

Easter gave me some time to finally get this thing rolling - It was a bit more of a problem than I had anticipated, funnily not because of Vagrant or Docker but more because of our system and TYPO3.

I started with a simple Vagrant box based on ["phusion-open-ubuntu-12.04-amd64"][vagrantbase].
The only thing this really does is setting up ports and shares and runnig a shell script for provisioning.
I love shell scripts and therefore this was way better than writing Chef or Puppet for provisioning.

This shell script installs the Docker daemon and sets up my Docker images.
Dockerfiles are stored in shared folders and are therefore accessible from outside the Vagrant box.

I tried to do this for all parts that I need control over during development, namely

- all my sources, all Git repos
- nginx.conf
- php.ini and php-fpm.conf
- PHP error log file (so I can tail it outside of the Vagrant box)

So all of those are configured to either be accessed from or written to a shared folder accessible from the outside.

There were also some strange issues to solve like having to compile a newer version of Git (> 1.7.8) because submodule references were absolute paths in older versions.
This was an issue because I am cloning our sources **within** Vagrant but want to be able to use Git **outside** of Vagrant, so submodule paths need to be relative.
Git version 1.8.5 manually built to the rescue.

An issue related to this is that you need to know Vagrant is running as root while provisioning, but as a user called "vagrant" later on when you ssh into your box.
This means for example I had to copy over .gitconfig files to both root and vagrant user homes to be able to do my Git stuff during provisioning and later on within the Vagrant box.

Having the base Vagrant box set up, Docker takes over and builds its containers.
One thing to keep in mind is that Docker's shared folders need to be mapped to the Vagrant file system, not the one of the host.

Docker images are simple, so you can understand what's going on reading about one screen of code.
Basically they set up a base OS, apt-get all necessary packages - I actually use aptitude to solve some dependency issues - and then run a service exposed on a port.
In the case of my nginx/php-fpm boxes there's actually two services running, but since they're so closely related I kept them bundled in one place instead of taking them apart in separate containers.

Here's the whole thing visualized (lighter parts optional):

![Vagrant Docker PHP MySQL TYPO3 development environment](/images/vagrant-docker-php-mysql-development-environment.png)

# Problems

I had the base system running relatively fast and PHP was responding with a phpinfo() page.
From there I needed at least the same amount of time to correctly set up all PHP modules for TYPO3 - especially Memcached can be problematic, as TYPO3 is not clear about what you need to install - at leas I didn't find it.
Having an array of options for PHP and Memcached does not help, there's: php-memcache (no trailing 'd'), php-memcached, php-libmemcached, PECL memcache (again, no 'd') and PECL memcached ...
Almost the same goes for installing freetype, imagemagick, gd and some related packages using apt-get. After all GD stuff is still not working correctly but also not really necessary for me now.

I spent quite some time also to get our config aligned with the new ports and IP addresses.
A weak spot for my system remains in this area too: I am using a Docker assigned IP number of my Vagrant box just like a fixed IP to be able to communicate across Docker containers.
You need the fixed IP (and the right port) to access a service running in one Docker container from another container.
A simple example: PHP in one container connects to MySQL running in another container.
Now this IP, which is assigned to the docker0 interface as 172.17.42.1 is fixed as far as I can tell, however this is not entirely clear to me now and can't be relied on.

One solution for this cross-container communication could be the `--link` option when you do a `docker run -d ...`.
This sets some environment vars including IP and port within a Docker container and you could theoretically parse those and get IP and port of the service you want to connect to - this would have required substantial coding or code adaption and therefore I didn't do it.

All in all I have a working dev environment now and it's neatly packaged away in a VM, can be versioned and best of all distributed by sending over a couple of Vagrant- and Dockerfiles.

A `vagrant up` now takes around 30 minutes including cloning all Git repos and importing the database.
So devs around here can now be up and running from zero to development in roughly half an hour.
All they need is node.js and [node-http-proxy][nodehttpproxy] installed on their machines and some /etc/hosts entries for our PHP front- and back-ends.

Too bad this development system will not be used as much as I have just decided to take on a new, really exciting challenge and move on to a new project after more than five years freelancing with Deutsche Telekom/T-Systems.
This probably also marks the end of my work in the TYPO3 and probably in the PHP world in favor of more JavaScript and mobile development.

[vagrant]: http://www.vagrantup.com/
[docker]: https://www.docker.io/
[vagrantbase]: https://github.com/phusion/open-vagrant-boxes
[nodehttpproxy]: https://github.com/nodejitsu/node-http-proxy
