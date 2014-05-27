---
layout: post
title: "Cordova iOS / Android app for municipal services"
date: 2012-11-30
banner: coffeecontainers.jpg
---

## Public Transit PhoneGap App

Based on an existing mobile website I developed a cross-platform mobile app for Android, iOS and Windows Mobile (WM was later dropped).
The existing mobile offering, based on PHP, was extended with a generator that created a static JavaScript/jQuery Mobile application from dynamic content.
PhoneGap was then used as container for iOS and Android.

The app is a public transit helper with a news feed and a dynamic schedule based on your current location.

Several external data sources were hooked up to pull dynamic content into the app.
The UI of jQuery Mobile was made compatible to the company's CI.

## Hands-On Mentoring and Development 

I conducted a 1-day workshop with the IT department to introduce newly employed technology such as PhoneGap, jQuery Mobile and the SDKs of our target platforms. 
The PHP-based generator was also a result of the workshop. 

Afterwards I trained the company's developers hands-on with browser dev-tools, platform SDKs and PhoneGap.
As a result further development and maintenance of the application can be conducted in-house.

## Result

In later sessions we implemented several Cordova/PhoneGap as well as Android/iOS and jQuery Mobile version updates and explored the plugin system. 
The app was also updated to be Cordova CLI compatible.
A QR-reader plugin was also integrated to scan QR-Codes placed at bus- and train-stops.

The app ist currently available on Apple's App Store and on Google's Play Store.
