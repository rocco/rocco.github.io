# This is the Jekyll source of www.roccogeorgi.com

This is a very basic [Jekyll](http://jekyllrb.com/)-based website.

Feel free to check it out and grab whatever you need - except my pictures please.
Found a bug? Open an issue or fork and fix and I'll happily pull it in.

## Design and layout

I built a simple design heavily inspired by [Zach Holman's website](http://zachholman.com/).
My page adapts to different screen widths via CSS media queries.
So you could say this is *responsive* to some extend.

I use [Google webfonts](https://www.google.com/fonts/) and the [Raleway font](https://www.google.com/fonts/specimen/Raleway) in three weights: 100, 200 400

<strike>There is a shell script that generates base64 encoded data URIs of my all my banner images in `_source/_banners/_banner.sh` and writes them to a text file in `_source/_banners/_banner.txt`.
This way I can easily include them into my .md files. I like to inline them so there's one request less and no waiting times w/o image.</strike>

Banner images are simply referenced using their base file name in posts. After all, having them inline does not make too much sense with their current file size (they were intended to be much smaller).
As separate files they can be properly cached and thus page load size is smaller across the board especially with many banners repeating in different posts and pages.

## Jekyll setup

I have no blog in the conventional sense, but a project and event section, both containing posts within their subfolders.

A not well documented feature of Jekyll is that you can access posts in those folders via their (automatically assigned) categories like this:

    {% for post in site.categories.events %}

... this iterates over all posts in my folder `/_source/events/_posts/`.
The posts itself do not need a `category: events` in their *front-matter*.

## Jekyll plugins

I am using [Michael Levin's](http://www.kinnetica.com/) sitemap generator in the [octopress version](https://github.com/imathis/octopress/blob/master/plugins/sitemap_generator.rb).

My forks of plugins are slightly fixed/adjusted/merged to my needs:

<strike>
- [jekyll-press](https://github.com/rocco/jekyll-press) compresses HTML
	- merged: allow excluding any StaticFiles by Matt Way
	- merged: json support by komachi
	- taken out because of Java's "java.lang.IndexOutOfBoundsException: Index: 0, Size: 0"
	- after all HTML is gzipped anyways, so what's the point compressing it again?
</strike>
- [jekyll-asset_bundler](https://github.com/rocco/jekyll-asset_bundler) compresses JS and CSS
	- allow to serve compressed locally via new config option "servenodev"
	- cache dir in line with pygments and others (dot-dir)
	- patch to enable re-rendering on --watch
- imagetag
	- my own image tag plugin to add classes to images
	- based on [Andrew Stewart's](http://blog.stwrt.ca/2012/11/04/jekyll-images) [plugin](https://github.com/stewart/blog/blob/master/plugins/image_tag.rb)

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
