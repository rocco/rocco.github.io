---
layout: post
title: "Sample Project"
date: 2012-11-11 11:11:11 +0100
comments: true
---

This is how this website came about using [Octopress][1]/[Jekyll][2] and hosted through [GitHub Pages][3].
I am using my own Octopress theme, so there was no `rake install` as menioned in [Octopress docs][5]. 
I'll show you how this is done and how Octopress, Jekyll and a custom theme with SASS all fit together.

## Base installation

First, set up your base structure **without** default theme.

You clone the Octopress repo to create a new website/blog called `yoursite`:

    git clone git://github.com/imathis/octopress.git yoursite

Then you install some necessary ruby gems with (the `bundler` gem [needs to be installed][5]):

    cd yoursite
    bundle installed

This installs Jekyll 0.12 by default with is quite a bummer, as Jekyll 1.0 (the next major) is over 6 Months old.
What this leads to is problems debugging, as you cannot just do a `jekyll server` as suggested by [Jekyll docs][7] (for Jekyll 0.12 `jekyll --server` is your friend).

You also set up the `yoursite` local repo to be linked against your GitHub Pages repo, in my case this points to `https://github.com/rocco/rocco.github.io`:

    rake setup_github_pages

... this switches your local repo to the `source` branch, and adds your github.io repo as `origin`, but more on that later.

## Create a custom Octopress theme

In the simplest form a custom theme is nothing more than a regular HTML page and it has really nothing to do with Octopress.
Octopress after all is "merely" a set of:

- Jekyll config settings
- some Jekyll plugins
- a base structure for a Jekyll site (HTML/CSS/JS)
- a SASS/Compass setup
- a Rakefile

The Octopress setup lets Jekyll take whatever is in your `source/` folder and generate a static page from it.
Aside from that let's stick with basic Jekyll for now.
This also menas that we need to get OCtopress plugins out of the way for now as they reqire some files to be present that we will not have available initially:

    mv plugins _plugins

Now, if you would only have an `index.html` page in `source/` this would become your start page on GitHub Pages.
Lets try and create a `source/` folder within your `yoursite/` folder:

    cd yoursite
    mkdir source

... and now put an index.html page in your `source/` folder and your good to go.

    echo '<html><head><title>{{ site.title }}</title></head><body><h1>Hello new theme!</h1><p>lolz</p></body></html>' > source/index.html

Now we'll build the page using Jekyll (0.12) and start a local webserver to see our result in the browser:

    jekyll --server

If you now navigate to

    http://localhost.com:4000/

... you will see your index.html page's content displayed.

[1]: http://octopress.org/
[2]: http://jekyllrb.com/
[3]: http://pages.github.com/
[4]: http://octopress.org/docs/blogging/
[5]: http://octopress.org/docs/setup/
[6]: http://docs.shopify.com/themes/liquid-basics
[7]: http://docs.shopify.com/themes/liquid-basics