---
layout: post
title: "Domain-Driven Design in Ruby at DDD Exchange 2013 in London"
date: 2013-06-20 11:28
comments: true
sharing: true
categories: [DDD]
---

![Burlington House Cartoon](http://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Leonardo_-_St._Anne_cartoon-alternative-downsampled.jpg/178px-Leonardo_-_St._Anne_cartoon-alternative-downsampled.jpg)
Last week when I was in London I came across Leonardo DaVinci's drawing, [_The Virgin and Child with St Anne and St John the Baptist_](http://en.wikipedia.org/wiki/The_Virgin_and_Child_with_St_Anne_and_St_John_the_Baptist), while wandering the National Gallery in London. It's also known as _The Burlington House Cartoon_ because drawings of this sort were usually transferred to a board for painting by pricking or incising the outline. With this cartoon, this has not been done, suggesting that the drawing has been kept as a work of art in its own right.

I see a sample app as functioning like this cartoon. It's not a complete system, and is not intended to be prescriptive in any way. Rather, it is an along-the-way artifact created to learn. It's a point-in-time snapshot of a much deeper, largely invisible, learning process, and thus is incomplete in that way too. When the sample app is done, it can function as a teaching tool, as a guide on the way to building something real. As a conversation starter and tradeoff clarifier.

Last Friday I presented at the [DDD Exchange 2013](http://skillsmatter.com/event/design-architecture/dddx-2013) hosted by Skills Matter in London on what I've learned recently in exploring doing domain-driven design (DDD) in Ruby. The way I approached this exploration was to start porting the DDD sample app from Java and C# to Ruby. I wanted to do this because it would give me an opportunity to go much deeper in Ruby than every before, while applying DDD concepts and techniques I was familiar with in some unfamiliar ways using new tools.

![DDD Exchange Logo](http://skillsmatter.com/custom/images/dddx-670x180px.gif)

I started the port to Ruby back in early May, and presented my early findings to an encouraging audience at DDD Denver on May 13. At that point I had only the domain model objects and some of the Rspec tests in place. Much of my time had been taken with investigating how best to implement value objects, and possible different approaches for the UI and for how to tackle enabling eventual consistency between aggregates. I had only begun to work out how to handle persistence with MongoDB.

When I gave the DDD Denver presentation, I was very nervous about presenting such an incomplete effort in public. But I found everyone to be very supportive and it inspired me to keep going. In the next four weeks I was able to solve all the big issues and prepare a presentation for DDD Exchange 2013. If you are interested, Skills Matter did an excellent job of recording the presentation and getting it online. See below for links to resources.

My hope is that this - currently very unfinished and unpolished - effort sparks interesting conversations about options, tradeoffs and possibilities, and helps others get to grips with the details of how to make DDD real on their projects.

<blockquote class="twitter-tweet" data-partner="tweetdeck"><p>Original slides for today&#39;s <a href="https://twitter.com/search?q=%23dddx&amp;src=hash">#dddx</a> 2013 talk Domain-Driven Design with Ruby are now online at <a href="http://virtual-genius.com/presentations/ddd_with_ruby_20130614">http://t.co/w9W3wvNz1J</a> <a href="https://twitter.com/search?q=%23DDDesign&amp;src=hash">#DDDesign</a></p>&mdash; Paul Rayner (@thepaulrayner) <a href="https://twitter.com/thepaulrayner/statuses/345538141706412032">June 14, 2013</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

Here's a list of resources related to my presentation:

* [Original presentation slides](http://virtual-genius.com/presentations/ddd_with_ruby_20130614.html).
* [Video of the presentation](http://skillsmatter.com/podcast/design-architecture/paul-rayner/mh-7679)
* [Sample app on Github](https://github.com/paulrayner/ddd_sample_app_ruby) - see the README for a comprehensive list of resources I've compiled as I've researched how to accomplish the Ruby port (including links to the Java and C# apps the port is based on).

A big thank you again to Skills Matter for hosting such a wonderful event and making it such a special day (for both me and my son).

<blockquote class="twitter-tweet" data-partner="tweetdeck"><p>Many thanks to all of today&#39;s speakers: <a href="https://twitter.com/unclebobmartin">@unclebobmartin</a> <a href="https://twitter.com/robsmallshire">@robsmallshire</a> <a href="https://twitter.com/thepaulrayner">@thepaulrayner</a> <a href="https://twitter.com/zimakki">@zimakki</a> You guys are awesome! <a href="https://twitter.com/search?q=%23DDDx&amp;src=hash">#DDDx</a> <a href="https://twitter.com/search?q=%23FF&amp;src=hash">#FF</a> (2/2)</p>&mdash; skillsmatter (@skillsmatter) <a href="https://twitter.com/skillsmatter/statuses/345596880899682304">June 14, 2013</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

##Tweets

<blockquote class="twitter-tweet" data-partner="tweetdeck"><p>Cargo sample is back in ruby ! <a href="https://twitter.com/search?q=%23dddx&amp;src=hash">#dddx</a></p>&mdash; Jérémie Chassaing (@thinkb4coding) <a href="https://twitter.com/thinkb4coding/statuses/345489374517006336">June 14, 2013</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet" data-partner="tweetdeck"><p>Good session by <a href="https://twitter.com/thepaulrayner">@thepaulrayner</a> about DDD with Ruby <a href="https://twitter.com/search?q=%23dddx&amp;src=hash">#dddx</a></p>&mdash; Nathan Gloyn (@NathanGloyn) <a href="https://twitter.com/NathanGloyn/statuses/345499135933308928">June 14, 2013</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet" data-partner="tweetdeck"><p><a href="https://twitter.com/thepaulrayner">@thepaulrayner</a> talk about ruby at <a href="https://twitter.com/search?q=%23dddx&amp;src=hash">#dddx</a> gave me some interesting ideas to explore. Great talk !</p>&mdash; Thomas Jaskula (@tjaskula) <a href="https://twitter.com/tjaskula/statuses/345497941353570305">June 14, 2013</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet" data-partner="tweetdeck"><p><a href="https://twitter.com/thepaulrayner">@thepaulrayner</a> really rocked. Cleared away so much fog and sparkled a lot of cool ideas! Thanks! <a href="https://twitter.com/search?q=%23dddx&amp;src=hash">#dddx</a></p>&mdash; ziobrando (@ziobrando) <a href="https://twitter.com/ziobrando/statuses/345497521143029760">June 14, 2013</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>


<blockquote class="twitter-tweet" data-partner="tweetdeck"><p>Really, REALLY interesting session by <a href="https://twitter.com/thepaulrayner">@thepaulrayner</a> about doing DDD in Ruby <a href="https://twitter.com/search?q=%23DDDX&amp;src=hash">#DDDX</a></p>&mdash; Tom Janssens (@ToJans) <a href="https://twitter.com/ToJans/statuses/345492748020887552">June 14, 2013</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet" data-partner="tweetdeck"><p>Good idea to show the project directory tree to show how to apply DDD with Rails/MongoDB/Mongoid by <a href="https://twitter.com/thepaulrayner">@thepaulrayner</a> at <a href="https://twitter.com/search?q=%23dddx&amp;src=hash">#dddx</a></p>&mdash; cyrille martraire (@cyriux) <a href="https://twitter.com/cyriux/statuses/345495156864200706">June 14, 2013</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet" data-partner="tweetdeck"><p><a href="https://twitter.com/thepaulrayner">@thepaulrayner</a> explaining how he did an hexagonal arch in rails application, really nice and clean  <a href="https://twitter.com/search?q=%23dddx&amp;src=hash">#dddx</a></p>&mdash; Rui Carvalho (@rhwy) <a href="https://twitter.com/rhwy/statuses/345494558446063616">June 14, 2013</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet" data-partner="tweetdeck"><p>Looks like Ruby on Rails smackdown here between activerecord pattern and domain driven pattern. Who will win? <a href="https://twitter.com/search?q=%23dddx&amp;src=hash">#dddx</a></p>&mdash; DCU CoderDojo (@coderdojodcu) <a href="https://twitter.com/coderdojodcu/statuses/345496157423812608">June 14, 2013</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet" data-partner="tweetdeck"><p>Actors are back in <a href="https://twitter.com/thepaulrayner">@thepaulrayner</a> ruby presentation...</p>&mdash; Jérémie Chassaing (@thinkb4coding) <a href="https://twitter.com/thinkb4coding/statuses/345495764119732224">June 14, 2013</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet" data-partner="tweetdeck"><p>Domain driven design with <a href="https://twitter.com/search?q=%23ruby&amp;src=hash">#ruby</a>  <a href="https://twitter.com/search?q=%23dddx&amp;src=hash">#dddx</a> by <a href="https://twitter.com/thepaulrayner">@thepaulrayner</a> <a href="http://t.co/FMHMtgI1hX">pic.twitter.com/FMHMtgI1hX</a></p>&mdash; Rui Carvalho (@rhwy) <a href="https://twitter.com/rhwy/statuses/345488522964238336">June 14, 2013</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet" data-partner="tweetdeck"><p>As an exercise, I think I’ll be reimplementing in Python the <a href="https://twitter.com/search?q=%23dddesign&amp;src=hash">#dddesign</a> Ruby sample presented by <a href="https://twitter.com/thepaulrayner">@thepaulrayner</a> at <a href="https://twitter.com/search?q=%23dddx&amp;src=hash">#dddx</a>.</p>&mdash; Robert Smallshire (@robsmallshire) <a href="https://twitter.com/robsmallshire/statuses/345498791186673664">June 14, 2013</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet" data-partner="tweetdeck"><p>Had a good talk during the break with <a href="https://twitter.com/thepaulrayner">@thepaulrayner</a> about evangelising <a href="https://twitter.com/search?q=%23DDDesign&amp;src=hash">#DDDesign</a> in dynamic languages like ruby and php  <a href="https://twitter.com/search?q=%23dddx&amp;src=hash">#dddx</a></p>&mdash; Mathias Verraes (@mathiasverraes) <a href="https://twitter.com/mathiasverraes/statuses/345578077138608128">June 14, 2013</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet" data-partner="tweetdeck"><p><a href="https://twitter.com/thepaulrayner">@thepaulrayner</a> talk at <a href="https://twitter.com/search?q=%23dddx&amp;src=hash">#dddx</a> <a href="https://twitter.com/search?q=%23ruby&amp;src=hash">#ruby</a> <a href="http://t.co/ryycPIso6k">pic.twitter.com/ryycPIso6k</a></p>&mdash; Thomas Jaskula (@tjaskula) <a href="https://twitter.com/tjaskula/statuses/345489563344572416">June 14, 2013</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

And I just have to include this one...

<blockquote class="twitter-tweet" data-partner="tweetdeck"><p>Breaking News! Holy Camelshit! Is really possible to apply DDD with Rails! <a href="https://twitter.com/search?q=%23dddx&amp;src=hash">#dddx</a></p>&mdash; DDD Borat (@DDD_Borat) <a href="https://twitter.com/DDD_Borat/statuses/345497300921090048">June 14, 2013</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>