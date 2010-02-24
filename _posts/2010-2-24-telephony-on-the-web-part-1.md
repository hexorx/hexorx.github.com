---
layout: post
title: Telephony On The Web - An Intro To VoIP
category: ruby
---

This is part 1 of a series of post on integrating telephony with web applications.

- [An Intro To VoIP][http://crackersnack.com/2010/2/24/telephony-on-the-web-an-intro-to-voip]
- Controlling FreeSWITCH with XML
- Twilio
- PhrkML
- more ...

Telephony is awesome. Why is it awesome? The telephone system is something that has been around longer than all/most of us have been alive. It has been 95 years since the first US coast-to-coast call was made in 1915. Yet right now the technology behind telephony is going through a major paradigm shift that puts developers in control.

Telephones are moving from giant switches that filled entire buildings to data networks and soft-switches. The important thing about this change is that when a call becomes data it is just another piece of software. Soft-switches make it telephony accessible to anyone who has a desire to tinker.

We are going to start off with some terminology, a crash course in the basics VoIP and what kind of setup is needed to start playing. Next we will go into a couple different ways web technologies can be used to take control of a telephone system.

### A SIP of what?

The de facto protocol for VoIP (Voice over IP) is SIP (Session Initiation Protocol). SIP is used for setting up, tearing down, and controlling calls. Although other protocols exist, such as IAX (Inter-Asterisk eXchange), they are not as well supported as SIP.

The cool thing about SIP is that it is based on web standards all of us use every day ... unless you are camping or something ... and don't have web access at all ... that would be horrible. SIP is a text based, human readable protocol based on the HTTP protocol. So you have very familiar messages like 200 OK and 404 Not Found. It also uses an address format we will all recognize. For example if Joe has a phone registered to [Teliax][] his address would be joe@teliax.com. I will go into more details on phones and registrations in a second. The point is the address is exactly the same as an email address. It contains a user followed by an @ and ends with the domain.

To make or receive calls you need an end-point. An end point can be a SIP phone, ATA adapter or soft-phone. Put simply an end-point is a network client that speaks the SIP protocol. To be useful these end-points register to a switch and tell the switch where they are located. This allows other people to send calls to the switch and the switch deal with trying to find the right end-point. The switch is also where we can do all the fun stuff. Before we go into detail on a switch lets go over some of the end-point options.

**SIP Phone**

A SIP phone looks just like a regular phone but it plugs into a data network instead of a normal phone network. It acts as any other client on the network, with its own ip address and everything. Sip phones start at under $100 for a basic [Aastra 6730i][http://www.8774e4voip.com/Aastra_6730i_p/aastra-6730i.htm] to over $400 for an awesome multi-line touch-screen [Aastra 6739i][http://www.8774e4voip.com/Aastra_6739i_p/aastra-6739i.htm]. And yes I like and recommend both Aastra and [e4voip][].

**ATA - Analog Terminal Adapter**

This is the type of thing you would get from Vonage. It just turns a regular phone into a SIP Phone. It has a phone jack, or two, a network jack and a power cord. Pretty simple little devices. The usually start at $50 for a two line ATA. There are some really fancy ones that have anywhere from 8 to 24 and more lines.

An ATA is a good option if you have a lot of legacy phones that you want to keep around or are trying to move a legacy PBX (public branch exchange, in an office with extensions) to new cool VoIP stuff.

You do need to look out for a few things when buying and ATA. You will sometimes see them talk about having so many FXS and FXO ports. The ones that connect to a phone are the FXS (something Station) and the FXO (something Office) are for connecting to the PSTN (Publicly Switched Telephone Network aka the normal phone network). I recommend using a VoIP provider like [Teliax][] for the connection to the PSTN though since it cheap, easy and provides more flexibility. You also want to make sure not to get an ATA from Vonage or some other VoIP provider that locks there equipment. You can only use them with that provider. It is best to buy them somewhere like [e4voip][] where you know they will come unlocked.

**Soft-Phone**

A soft-phone is just a piece of software you run on your computer. They are the easiest and cheapest way to get started but don't always give you the same quality or nice feel of a real phone. Soft-phones are available for every major OS and most smart phones. On OS X I like to use the open source [Telephone][http://code.google.com/p/telephone/]. [SJPhone][http://www.sjlabs.com/sjp.html] is available on OS X, Linux and Windows but isn't as nice.

### Switch it up!

The switch is responsible for routing calls from one person to another and inserting all sorts of fun things in the middle. This is where we can plug in to control where a call goes or make an interactive system with prompts and live data and other coolness.

In the next couple articles I will go into the different ways we can plug into these switches and make them do what we want using XML and our favorite tools for generating said XML.

[Teliax]: http://teliax.com
[e4voip]: http://www.8774e4voip.com/