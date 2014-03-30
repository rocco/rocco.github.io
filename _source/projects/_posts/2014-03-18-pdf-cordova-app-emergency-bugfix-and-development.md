---
layout: post
title: "Cordova App Emergency - bugfix and development"
date: 2014-03-18
banner: eisernersteg.jpg
---

Similar to an [emergency gig last year][lastyear] I was contacted by a digital agency in the region to fix their PhoneGap app in the last days before a deadline.
Their developer had become sick so they asked if I had a few hours to spend on something like that.

Apparently my name pops up when you enter "PhoneGap" on [freelancer-rheinmain.de][freelrhm] - thanks to [Florian][fbrandel] for that site.

## Challenge

On the first look the app was basically done with just some "minor" improvements to be made. 
It would list PDF documents, allow you to search and sort them and finally let you view them by loading full-screen images of each page with a selfmade browser.
You could also download the PDFs (meaning all pages of a PDF as single images) and browse them offline.

Frameworks used in the app included MooTools with PowerTools, Hammer.js, IScroll. 
PhoneGap version was pretty recent and aside from standards like Splashscreen and Statusbar the only plugins that caught my eye were File and FileTransfer.

They dumped the whole thing into GitHub for me and I got 14 Tickets and managed to finish 8 or so in the first few hours.

## Surprise

But hey no surprises no fun - turns out the PDF viewing mechanism was not so great afer all ... 
single-page image sizes ranged around sizes of 3 to 6 megabytes and storing them for offline browsing took ages, partly because the webserver delivering these PDFs apparently was connected via a 56k modem.

The biggest gotcha was related to these downloads as well as to debugging of PhoneGap apps: 
The initial developer of the app had inserted a hard-coded execution of the onDeviceReady() function so it was executed in desktop browsers (normally does not happen because the "deviceready" event is not fired here).

**Even if it's a bad hack, that's alright, but only if you make sure it is not executed on devices too!**

The error did not show directly but on actual devices anything you would trigger in the FileTransfer plugin was executed twice ... onDeviceReady() was executed after a delay for debugging reasons **and** triggered through the "deviceready" event on devices.

So as a result the progress-percentages of downloads jumped happily up and down, then up again - basically a download would trigger a sequence of single pages to be pulled, then saved, same for the next page etc.
This all then **happened twice** and would cause trouble because as queue 1 was at page 10 and progress was evaluating to 35%, queue 2 would download page 3 and set the percentage back to 2% - a very annoying and hard to catch error.

Another gotcha was that XCode now defaults target platforms differently and includes arm64 - of course some of the plugins are not compatible yet and can't build for devices - and of course this only happens hours before delivery with everything working great on the simulator ... Here just a hint in the Cordova/PhoneGap docs might be an awesome idea.
Talking of Cordova docs - I also opened/got merged a [pull request for their InAppBrowser plugin docs][iabdocs], some example source code apparently is never actually executed.

## Result

I managed to bugfix and extend the app so that it could be packaged and delivered to my customer's client.
Thankfully we were able to focus only on iOS for this preview-release, although Android could be done in a few days.

After all I swapped the single-page images browser for the InAppBrowser plugin and just displayed PDFs as they were (iOS Safari ftw.).
This also allows for zooming in the PDF and downloads were only one (big) file and much faster. 
For Android this looks similar, but involves the Google Docs PDF viewer and a native reader for downloaded PDFs.

It was an interesting job. The main challenge was time so I spend quite a few nights and delivered roughly 40 hours in two weeks on the side.
I used the Cordova command line tools exclusively as they appeal to me more for some reason - no issues there whatsoever.

Keeping a Cordova/PhoneGap project in a Git repo can be a pain because you never really know what files to .gitignore. 
But that's another story.

[lastyear]: {% post_url 2013-03-06-jquery-mobile-phonegap-bugfix-training %}
[freelrhm]: http://freelancer-rheinmain.de/search?q=phonegap
[fbrandel]: http://www.fbrandel.de
[iabdocs]: https://github.com/apache/cordova-plugin-inappbrowser/pull/31