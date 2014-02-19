# This is the Jekyll source of www.roccogeorgi.com

This is a very basic [Jekyll](http://jekyllrb.com/)-based website.

Feel free to check it out and grab whatever you need - except my pictures please.
Found a bug? Open an issue or fork and fix and I'll happily pull it in.

## Design and layout

I built a simple design heavily inspired by [Zach Holman's website](http://zachholman.com/).
My page adapts to different screen widths via CSS media queries.
So you could say this is *responsive* to some extend.

I use [Google webfonts](https://www.google.com/fonts/) and the [Raleway font](https://www.google.com/fonts/specimen/Raleway) in three weights: 100, 200 400

## Jekyll setup

I have no blog in the conventional sense, but a project and event section, both containing posts within their subfolders.

A not well documented feature of Jekyll is that you can access posts in those folders via their (automatically assigned) categories like this:

    {% for post in site.categories.events %}

... this iterates over all posts in my folder `/_source/events/_posts/`.
The posts itself do not need a `category: events` in their *front-matter*.

## Jekyll plugins

- [Michael Levin's](http://www.kinnetica.com/) [sitemap generator](https://github.com/kinnetica/jekyll-plugins/blob/master/sitemap_generator.rb)
- my fork of [jekyll-press](https://github.com/rocco/jekyll-press) compresses HTML
- my fork of [jekyll-asset_bundler](https://github.com/rocco/jekyll-asset_bundler) compresses JS and CSS

Forked are slightly fixed/adjusted to my needs.

## Git and deployment

I also added a simple deployment script inspired by the [Octopress Rakefile](https://github.com/imathis/octopress/blob/master/Rakefile).
It is called `.jk-deploy` resides in my root folder and requires a certain Git setup:

I don't use GitHub's Jekyll as is does not support custom plugins.
So the whole project resides in the `source` branch of my [rocco.github.io repo](https://github.com/rocco/rocco.github.io).
This way I can put the generated site into my `master` branch and keep it clean.

My deploy script grabs everything Jekyll generated into `/_site` and puts it into `/_deploy`.
This folder is ignored by the surrounding Git repo and contains its own one. 
So I can keep the `/_deploy` folder on `master` and add, commit and force push to GitHub to deploy my website.

## Workflow

My workflow is simple:

- edit/add files
- `$ jekyll build` to generate page
- `$ jekyll serve --watch` to inspect locally on [`http://localhost.com:4000/`](http://localhost.com:4000/)
- ./.jk-deploy to push website to GitHub

