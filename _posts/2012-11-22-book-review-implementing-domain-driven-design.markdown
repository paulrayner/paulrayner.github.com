---
layout: post
title: "Book Review: Implementing Domain-Driven Design"
date: 2013-02-01 11:40
comments: true
sharing: true
categories: [DDD, Reviews]
---

![Implementing DDD]({{ site.url }}/assets/iddd_thumbnail.png.jpg)
This is a review of the book _Implementing Domain-Driven Design_ by Vaughn Vernon, based on the [Safari Books Online rough cut edition][2]. The book is also currently available for [preorder on Amazon.com][0], with a scheduled release date of February 14, 2013. Rather than try to cover everything, I’ll be focusing on the parts of the book that I found most interesting and helpful: highlighting the things that stood out to me.

I have been a certified [Domain Language DDD instructor][3] for over two years now, and the most common question I am asked is where to find solid, pragmatic advice on how to actually implement DDD using the frameworks and tools with which developers are already familiar. The good news is _Implementing Domain-Driven Design_ more than adequately fills the lacuna. {" This book is up-to-date, easily comprehensible, free from dogma and the advice it gives is firmly grounded in the real-world experience of one of DDD's foremost practitioners. "}

###Some Background

At the end of 2011 I was privileged to be a technical editor for Vaughn's [Effective Aggregate Design series][1]. Around the same time I also enjoyed hearing Vaughn present a series on effective aggregate design locally at our [DDD Denver](#DDD Denver) meetup. So, for the sake of full disclosure, I have known Vaughn personally for years and collaborate often with him on the meetup. I’ve tried to be as impartial as possible in reviewing the book, basing my observations and opinions on the content alone.

I have been recommending _Implementing Domain-Driven Design_ to my students mainly on the basis of the high quality of the aggregate design articles and presentations, and Vaughn’s many significant contributions to the DDD mailing list over the years. But now I am pleased to base my recommendation also on a full read of the [Safari Books Online rough cut edition of Implementing DDD][2].

###Distilled DDD Wisdom

While there is plenty out there in the way of [DDD Resources](#DDD Resources), what Vaughn has done with this book is to distill much of the wisdom of the DDD community into a single book that provides pragmatic, expert guidance on how best to succeed with implementing DDD.  This is the book I want DDD students purchasing and reading alongside [the Blue Book](http://www.amazon.com/Domain-Driven-Design-Tackling-Complexity-Software/dp/0321125215).

I thoroughly appreciated the pretension-free way _Implementing Domain-Driven Design_ approaches everything. For example, it introduces domain-driven design (DDD) by stating:

> DDD brings domain experts and software developers together in order to develop software that reflects the mental model of the business experts. This does not mean that effort is spent on modeling the “real world.” Rather, DDD delivers a model that is the most useful to the business. Sometimes useful and realistic models happen to intersect, but to the degree that they diverge, DDD chooses useful.

Vaughn's book comes across as guidance from a good friend, combining occasional corny cowboy jokes that keep it fun with detailed, solid advice on the deepest recesses of the mechanics of applying DDD using the tools and techniques of today. 

The book's approach of developing an application to support Scrum and walking through how the team approached the problems they were up against is very helpful, especially when Vaughn digs into the team's mis-steps as they learn, adjust and improve. Contrary to any material online which might lead you to think that DDD is about overblown architectures, heavyweight frameworks and obfuscated approaches, in chapter one _Implementing Domain-Driven Design_ counsels that:

>Use DDD to model a complex domain in the simplest possible way. Never use DDD to make your solution more complex.

###Knowing When and Knowing How

There is a very helpful chart that helps the reader identify whether DDD is the right approach in a particular situation. So much of what I read about DDD online seems to be applying it where it will add little value. So much emphasis on how to apply the DDD building block patterns where they are not needed. Sigh.

Some confuse DDD with [Big Design Up Front (BDUF)](http://en.wikipedia.org/wiki/Big_Design_Up_Front), and thus struggle with understanding how DDD and agile relate. I was also pleased that _Implementing Domain-Driven Design_ starts out by emphasizing the agile, iterative, continuous modeling with domain experts that is at the heart of DDD “done well.” For example:

> The word “design” can evoke negative thoughts in the minds of business management. However, DDD is not a heavyweight, high ceremony design and development process. DDD is not about drawing diagrams. It is about carefully refining the mental model of domain experts into a useful model for the business. 

###Fundamental Concepts

The first chapter also does a good job of introducing the fundamental concepts of Ubiquitous Language, Bounded Context, and Core Domain. It also lays out clearly the costs and benefits of applying DDD, and how DDD as a lightweight, intentional approach to continous design is a natural fit for agile teams. For example:

>If developing a given Subdomain requires such a difficult, even precarious, assent, we’d bring the DDD tactical patterns along for the climb. A business initiative that matches the criteria of Core Domain should not quickly dismiss the use of the tactical patterns. The Core Domain is an unknown and complex area. The team is best protected against a disastrous mid-asset fall if using the right tactics.

>...

>First we want to focus on how the model will be used by clients, and these tests drive the model’s design. The good news is, it really is an agile approach. DDD promotes lightweight development, not ceremonious, heavy, upfront design. 

###Strategic Design with DDD

In chapter two, _Implementing Domain-Driven Design_ covers strategic design. Vaughn’s explanation and application of the distinction between problem and solution space in this chapter is particularly helpful, and I intend to incorporate this approach into how I do strategic design from now on.

This helpful problem/solution distinction at the strategic design level reminds me somewhat of the distinction at the tactical level between the Scenario and Model and Code Probe steps in the [Model Exploration Whirlpool][4]. In the Whirlpool the Scenario step is focused on learning and understanding the problem space, and the Model and Code Probe steps primarily address exploring and defining potential solutions. However, the entire process - every step in the whirlpool - is geared towards delving into a deeper understanding of the domain.

Putting strategic design right at the start of the book highlights the relative importance of getting the strategic aspects right: explaining why strategic design is important, and setting the stage for the reader to understand and explore careful application of the building block patterns.

I've encountered people who have (mistakedly) confused DDD with efforts to model the overall enterprise, so I heartily agreed with _Implementing Domain-Driven Design_'s advice to avoid the temptation to create a single, enterprise model:

>...developing a Domain Model is actually one way that we focus on only one specific area of the whole business domain. Any attempt to define the business of even a moderately complex organization in a single, all encompassing model, will be at best extremely difficult, and will usually fail... vigorously separating distinct areas of the whole business domain will help us succeed.

This section also does a praiseworthy job of explaining Bounded Context as intrinsically a _linguistic concept_: one tied to ubiquitous language and then supported by the technical implementation.

>When we employ DDD we strive for each Bounded Context to mark off where the meaning of every term used by the domain model is well understood, or at least should be if we’ve done a good job of modeling the software. _It’s chiefly a linguistic boundary._ These contextual boundaries are a key to implementing DDD. [emphasis mine]

I also appreciated the book’s emphasis on the primacy of focusing attention on the Core Domain, that:

>...part of the business domain that is of primary importance to the success of the organization. Strategically speaking, the business must excel with its Core Domain. It is of utmost importance to the ongoing success of the business. That project gets the highest priority, one or more domain experts with deep knowledge of that Subdomain, the best developers, and as much leeway and leverage as possible to give the close-knit team an unobstructed success path. Most of your DDD project efforts will be focused on the Core Domain.

However, in achieving this level of focus on the Core Domain, there is the possibility that teams may neglect Supporting and Generic subdomains, so _Implementing Domain-Driven Design_'s advice in this respect is also timely:

>Being Supporting or Generic doesn’t mean unimportant. These kinds of Subdomains are important to the success of the business, yet there is no need for the business to excel in these areas. It’s the Core Domain that requires excellence in implementation, since it will provide distinct advantages to the business.

###Balancing Understanding with Practicality

_Implementing Domain-Driven Design_ asks the reader to apply learning to her own domain, by sketching out Bounded Contexts, identifying her own Core Domain and so on in her own team’s situation. Nothing beats practice when it comes to developing new skills.

In the process of applying that new learning, the team is to:

>Include any relevant, high-level elements that will lead to vital team communication. On the other hand, push back when detail seems ceremonious.

Also, in my coaching I give similar advice to the following when a team tends to get “down in the weeds”:

>Produce Context Maps that you can post on the wall. You can upload them to a team wiki as long as it’s not just the project’s attic where nobody ever goes. Keep discussions about the project flowing back to your Map to stimulate useful refinements.

>...

>The trick is to balance the need to understand with practicality, and not pile too much detail into this level. Remember that we are likely not going to keep a very detailed graphical Map up to date far into the project. We’ll benefit most from what can be posted up on a wall, enabling team members to point at them during discussions. If we reject ceremony and embrace simplicity and agility, we’ll produce useful Context Maps that help us move forward rather than bog down the project

###DDD and Pragmatic Architecture

It is regrettable that over the years DDD has somehow become more associated with overblown architectural approaches than with the strategic, lightweight collaborative modeling Eric Evans has always advocated. I've even seen people [rejecting heavy-handed architectural approaches][5] and calling them DDD, when what they are rejecting is not DDD at all but rather the burden of carrying extraneous infrastructure and layer plumbing.

Chapter four of _Implementing Domain-Driven Design_ is targeted around architecture, and into our current climate of heavyweight, overblown and overengineered system architectural approaches, this chapter’s risk-driven and pragmatic approach to architecture blows a fresh breath of air:

>Avoiding architecture overuse is just as important as using it. Allowing real, genuine quality demands to drive what we do with architecture is a beneficial risk-driven approach. That way we use architecture only to mitigate the risk of failure, not to increase our risk of failure by using an architectural style that cannot be justified. Thus, we must be able to justify every architectural style in use, or we eliminate the style from our system.

The architectural chapter is comprehensive and dense, but very good. 

I found the best description of ports and adaptors approach that I have read. There is also a good description of CQRS, combined with practical guidance on when and where to apply it as an architectural organizing approach, and how it relates to event sourcing. 

###Building Block Patterns

Each of the next chapters covers one of the "building block" patterns of DDD in depth: entities, value objects, domain events, aggregates, factories and repositories. In each chapter _Implementing Domain-Driven Design_ explains what the pattern is, when to use it, and various ways to apply it. The book is careful to cover the relative merits and downsides of each approach, and gives technical implementations that show - by example - how to adopt them. 

In particular, _Implementing Domain-Driven Design_'s distinction between collection-oriented and persistence-oriented repositories was very helpful, and the examples with how to apply these styles for a variety of common persistence stores, including MongoDB and Coherence.

###Application Guidance

In the application chapter I would have liked to see more code samples for UI approaches, but I realize that this wish is unrealistic: presentation layer design is a massive topic on its own. 

There is an overwhelming and ever-changing diversity of frameworks, UI tooling and associated techniques, and there is only so much that can be included in such a book as this. _Implementing Domain-Driven Design_ wisely lays out the various options and tradeoffs, guiding the reader towards making informed and judicious choices.

###A Pleasant Surprise

Appendix A is an in-depth treatment of event sourcing, contributed by Rinat Abdullin. When I started the book I wasn't sure about why the appendix was there (asking myself, "isn't this material covered already in the main text?"), but it actually proved most helpful in understanding the mechanics, advantages and pitfalls of event sourcing. 

The event sourcing material here is a superb complement to the rest of the material, building on it in all the most important ways. This A+ES event sourcing chapter is the clearest and best description I’ve found on how event sourcing works. The coding examples provide expert cutting-edge guidance and tooling for getting an event store-based approach up and running quickly.

###Summary

I have to say it, if it’s not already obvious: I’m a fan. _Implementing Domain-Driven Design_ does a remarkable thing: it takes a sophisticated and substantial topic area in DDD and presentes it clearly, with nuance, fun and finesse.

This book is written in an engaging and friendly style, like a trusted advisor giving you expert counsel on how to accomplish what is most important. "By the time you finish the book you will be able to begin applying all the important concepts of DDD, and then some.  "

As I read, I found myself highlighting many sections, and will be getting a copy of _Implementing DDD_ for my bookshelf as soon as it is released. I will be referring back to it, and recommending it, often.

---
 <a id="DDD Denver"></a>
#####DDD Denver

Vaughn, Randy Stafford and I cofounded DDD Denver in April 2011. To join the meetup, go to the [our meetup home page](http://bit.ly/ddd_denver). Most presentations at our meetup are recorded and posted online.

<a id="DDD Resources"></a>
#####DDD Resources

For someone that wants to get up to speed with DDD there are a variety of complementary options. Firstly, those that want to explore on their own can find sample apps and an abundance of presentations and articles on the [DDD Community site][6] and [InfoQ][7]. There is also the [DDD mailing list][8], [Stack Overflow feed][9], and blog posts by a variety of knowledgeable individuals. Finally, if you want to get up-to-speed quickly then attend one of the excellent public [Domain Language DDD classes][10], designed by Eric Evans himself. These classes are offered through [Domain Language][3] and its training partners in New York City, Denver, London, Paris, Oslo and Stockholm.  The classes are also available as onsite offerings if you want to get your whole team trained.

[0]: http://amzn.to/RN4qWJ
[1]: http://dddcommunity.org/library/vernon_2011
[2]: http://my.safaribooksonline.com/book/project-management/9780133039900
[3]: http://www.domainlanguage.com/about
[4]: http://www.domainlanguage.com/ddd/whirlpool
[5]: http://stackoverflow.com/questions/12982680/gave-up-ddd-but-need-some-of-its-benefits
[6]: http://dddcommunity.org
[7]: http://www.infoq.com/domain-driven-design/
[8]: http://tech.groups.yahoo.com/group/domaindrivendesign/
[9]: http://stackoverflow.com/questions/tagged/domain-driven-design
[10]: http://www.domainlanguage.com/training

