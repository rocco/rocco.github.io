---
layout: post
title: "CarCulatr – A 2006 mobile app in JavaScript"
date: 2006-05-14
banner: carculatr.jpg
---

In preparation for my first conference, [XTech 2006 in Amsterdam][xtech06], I developed a mobile price finder app for used cars and called it a bit jokingly *CarCulatr*.
The app was based on [Opera Platform][operaplatform] an application runtime environment providing browser/phone integration introduced by Opera in 2003.

Just a bit before this event I co-founded [PavingWays][pavingways] to explore and research mobile web technology, CarCulatr was our first project.

## Challenge

The idea: Whenever you go out on car markets and find a car of interest, you might be wondering what the average price for a car like that currently is on the market.
So with your phone it would have been tedious (pre-iPhone world) to use online car portals and there needed to be an app for that!

The whole project consisted of a single-page mobile application written in JavaScript/HTML/CSS and a server component getting prices from the portals written in PHP.

Users would use the app's UI to define car make, age and mileage. A request to the server would trigger a crawler searching for matching offers on a big portal for used cars.
The average price along with min/max and some other values were sent back in the response and users saw the result on their mobile phone (emulator).

Results looked like this:

![CarCulatr Screenshot 1](/images/CarCulatrScreen1.jpg)
![CarCulatr Screenshot 2](/images/CarCulatrScreen2.jpg)


## Responsibilities

- researching Opera Platform and JavaScript apps
- development of JavaScript-based client app
- development server component with price crawler in PHP
- [presentation of project][carculatrpresentation] at the conference

## Learnings

While loading results from the server I displayed animated windscreen wipers instead of the usual Ajax loader - this was probably the biggest success factor of my presentation (aside from being asked to apply for a job at Opera by [Håkon][hakonhome] himself).

![Ajax loader - animated windshield wipers](/images/CarCulatrLoading.gif) ... loading ... ;)

Please find [the original presentation on slideshare][carculatrpresentation].


[xtech06]: {% post_url 2006-05-16-xtech-2006-conference %}
[operaplatform]: http://www.operasoftware.com/press/releases/mobile/introducing-the-opera-platform
[hakonhome]: http://people.opera.com/howcome/
[pavingways]: http://www.pavingways.com
[carculatrpresentation]: http://www.slideshare.net/geeroc/carculatr-xtech-2006
