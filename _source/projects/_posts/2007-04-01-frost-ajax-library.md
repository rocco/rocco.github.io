---
layout: post
title: "Frost - Ajax Library for constrained browsers"
date: 2007-04-01
banner: spikeyground.jpg
---

As a first public result in my efforts to research web techologies for mobile devices I created the *Frost Ajax Library* and made it available as open source.

According to past notes *"The Frost Ajax library is a tool for Ajax development on constrained browsers, such as micro browsers on mobile phones or gaming consoles. It is intended to abstract the use of either the XMLHttpRequest object (XHR) or an equivalent ActiveX control and therefore make Ajax development on mobile phones or other constrained devices easier. The goal with Frost is to provide the community with a library that can help to implement Mobile Ajax applications and Mobile Widgets."*


## Challenge

My goal with Frost was to provide the community with a library that can help to implement Ajax-powered applications and Mobile Widgets on as many devices as possible.

Frost was a simple abstraction layer to do **just this simple thing**: get something from server and put it somewhere on the page.
jQuery and other libs did this too, but not for as many low-end browsers as Frost did and they did a lot more so they were huge in comparison.
Since Frost was mobile-targeted I had to deal with latencies and flaky networks, so I built in a mechanism to detect if a connection was dead or just slow and handled reconnects and timeouts.

![Frost library logo](/images/frostphone.jpg)

I created a server component (PHP) that detected the user agent detection and basically stripped out anything in the JS code that was not used by this browser.
To decide which browser was supported I did a lot of testing using a special test suite and memorizing the results.
The server component also did a bit of compression, all to achieve the smallest footprint possible.


## Results

The library is not available anymore but it is still being used by thousands of players every day in a [mobile roulette game we created at WMG][mobileroulettegame].

Daniel Applequist kindly invited me to write a [position paper][mobileajaxworkshoppositionpaper] and attend the [W3C/OpenAjax Alliance Workshop on Mobile Ajax][mobileajaxworkshop] ([full report][mobileajaxworkshopfull]) in Mountain View in 2007.
So I happened to sit in a panel with people from AOL, NTT Docomo and Google with celebrities like [Douglas Crockford][douglascrockford] in the crowd.
I also met [Alex Russell][alexrussell] and we spoke about dojo and SitePen. 

### Some other results

- I connected to [Luca Passani][lucapassani] and many of my tests were later incorporated into [WURFL][wurfl]
- [Brian LeRoux][brianleroux] got in touch and asked me to contribute to [xui][xui]
- I spoke at [Mobile Web Americas in Orlando][mobilewebamericas] in October 2007
- Frost was mentioned in [Germany's c't magazine (PDF)][frostinct]
- I wrote a [article for dev.opera.com][operaarticle] about Mobile Ajax and Frost
- There's a [presentation about Frost on slideshare][frostonslideshare]


## Learnings

**Open source projects rock**, but you need to invest tons of time when you start one yourself. 
It's not like you release something and people will happily join you and contribute.
As with any other product you need to build something of value and clearly communicate the message to your customers/users/contributors.
With open source you also need to make contribution as easy as possible and provide a simple means for extending the existing version.

On the rewards side you get in contact with many new people, get a chance to speak at conferences (and therefore attend for free), you get free press by people blogging about your project and **above all you have the chance to create something actually meaningful for others**.


[mobileroulettegame]: http://worldmobilegaming.com/
[operaarticle]: http://dev.opera.com/articles/view/mobile-ajax-and-the-frost-ajax-library/
[wurfl]: https://en.wikipedia.org/wiki/WURFL
[lucapassani]: http://www.passani.it/
[brianleroux]: http://brian.io/
[xui]: http://xuijs.com/
[mobileajaxworkshop]: http://www.w3.org/2007/06/mobile-ajax/
[mobileajaxworkshopfull]: http://www.w3.org/2007/06/mobile-ajax/report.html
[mobileajaxworkshoppositionpaper]: http://www.w3.org/2007/06/mobile-ajax/papers/pavingways.georgi.positionpaper_moa_workshop.pdf
[alexrussell]: http://infrequently.org/
[douglascrockford]: https://en.wikipedia.org/wiki/Douglas_Crockford
[frostonslideshare]: http://www.slideshare.net/geeroc/frost-mobile-ajaxworkshop2007
[frostinct]: http://www.heise.de/ct/08/07/006/
[operaarticle]: http://dev.opera.com/articles/view/mobile-ajax-and-the-frost-ajax-library/
[mobilewebamericas]: http://www.pavingways.com/speaking-at-mobile-web-americas-in-orlando_105.html