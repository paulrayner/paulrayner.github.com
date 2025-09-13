---
layout: post
title: "Cloud Strategy, Design And Automation"
date: 2020-03-19 10:00:00 -0600
tags: [Cloud, Design, Architecture]
excerpt: "…getting new features into production quickly is the real currency of the digital world. — Gregor Hohpe"
image: ruijia-wang-YmStaPUcd-Y-unsplash.jpg
comments: true
---

> …getting new features into production quickly is the real currency of the digital world.
> 
> — Gregor Hohpe

I just finished reading Gregor Hohpe's excellent [Cloud Strategy: An Architect Elevator Guide to Successful Cloud Migration](https://leanpub.com/cloudstrategy) ebook. I like how the book approaches cloud strategy from an architectural perspective, moving beyond all the buzzwords and wishful thinking, while providing solid guidance for how to actually deliver on the promises of cloud migration for enterprises.

Concerning automation, he points out that much of the original effort towards streamlining development processes was focused on the specification and coding aspects of software delivery, i.e. the translation of ideas into code.

![cloud strategy ebook cover](/assets/cloud-strategy/cloud-strategy-ebook-cover.png){: .right .text-center width="200"}

> Many frameworks and methodologies looking to industrialize this aspect of software development, such as CASE tools, 4GL, and executable UML, arrived and disappeared again over the course of the 1990s and 2000s.
> 
> — Gregor Hohpe

I remember some of those tools, [Rational Rose](https://en.wikipedia.org/wiki/IBM_Rational_Rose_XDE) being one. The idea was to apply manufacturing techniques to the creative process of translating concepts into coding. After all, it seems simple enough: create a class diagram and translate that directly into code, and vice versa. But this ultimately proved to be much harder, and much less useful, than hoped.

> Somehow, trying to automate the specification and coding steps of software delivery never quite yielded the results that the creators of these tools were after. Collectively, we could have saved a lot of effort if we had taken Jack Reeve's article [What is Software Design](https://www.developerdotstar.com/mag/articles/reeves_design.html) to heart. Published in 1992, Jack elaborated that coding is actually the *design* of software whereas compiling and deploying software is the manufacturing aspect. So, if you are looking to industrialize software manufacturing, you should automate on testing, compiling, and deployment, as opposed to trying to industrialize coding. About a quarter century later that's finally being done. Some things take time, even software.
> 
> — Gregor Hohpe

I'm reminded of David Marquet's distinction between red work and blue work.

Red work is DOING work. It's about execution and reducing variability.  Think of manufacturing.

Blue is THINKING work. It's about discovery and decision making and increasing variability. Think of product development.

Analysis, modeling, design and coding are all activities that are intrinsically *blue* work.

***What makes the automation that cloud deployment provides so powerful is that it can be applied to the red work downstream from development that needs to be done to speed delivery of newly coded functionality that results from the blue work.***

This hopefully becomes a virtuous cycle where applications can be modularized to take advantage of the elasticity and deployment advantages of a cloud environment.

> Programming is a design activity — a good software design process recognizes this and does not hesitate to code when coding makes sense.
> Coding actually makes sense more often than believed. Often the process of rendering the design in code will reveal oversights and the need for additional design effort. The earlier this occurs, the better the design will be.
> 
> Since software is so cheap to build, formal engineering validation methods are not of much use in real world software development. It is easier and cheaper to just build the design and test it than to try to prove it.
> 
> — Jack Reeves

Cloud strategy, when done well, is such a powerful enabler for the kind of delivery model that is optimized for this kind of time to value. Because of this, organizations should take an application-centric (rather than infrastructure-centric) view on their cloud strategy.

In an application-centric approach to cloud the key drivers are concerned with "speeding up software delivery, primarily by reducing friction. Speed comes from automation, such as a fully automated tool chain, infrastructure-as-code, and cloud-ready applications that scale horizontally. Coupled with modern approaches like continuous integration (CI), continuous delivery (CD), and lean development, such tooling can transform the way an enterprise thinks about software delivery." (Hohpe)

Photo of Cloud Gate by [Ruijia Wang](https://unsplash.com/@sidem0n) on [Unsplash](http://unsplash.com).