---
layout: post
title: "Blogging with Octopress and Github Pages"
date: 2013-02-04 12:26
comments: true
sharing: true
categories: [Writing, Productivity]
---

Here are [4 good reasons from AlBlue's blog][0] to consider using Octopress for a technical blog: 

* Jekyll-based
* Markdown content
* Stylish
* Plugins

See also [Octopress Is Pretty Great][27], which has a great description of not only the positives of Octopress, but also a good step-by-step summary of how to configure Octopress for your environment.

##Why Octopress?

The Jekyll-style approach is to write content in an author-friendly text format (i.e. [Markdown](http://daringfireball.net/projects/markdown/)) that is then translated to HTML and served up as such is gaining more and more momentum over the more common CMS-style approach. Tom Preston Werner [wrote Jekyll back in 2008](http://tom.preston-werner.com/2008/11/17/blogging-like-a-hacker.html), and it is now used to [serve content on Github Pages](https://help.github.com/articles/using-jekyll-with-pages). 

With my previous blog I had been using BlogEngine.NET, which is a nice full-featured .NET-based blogging engine that didn't require me to install and configure SQL Server on my virtual host. I generally liked BlogEngine.NET, but found the authoring experience tedious, and the updates a hassle. 

In writing blog posts on my MBP I struggled with using OSX-based HTML editors, finding they only got in the way of the writing process. I really wanted to move to tools I am either more comfortable with already, or interested in mastering: Ruby, Rake, SASS, Jekyll, Markdown, Sublime Text 2, Byword, Marked, and Git. As Joel Hooks says on his ["Fresh Start"][1] blog post:

>[Octopress]...falls well into the [breakable toy][5] category of things, and that is something I can use right now as I learn new tools. I’m looking forward to improving this space with quality content about modern standards-based web development with open source tools.

The Jekyll-based toolset really suits my workflow. I can write my posts in Markdown lightweight plain text format with Sublime Text 2 or Byword, manage all my changes in Git with full support for lightweight branching and additive changes, preview it with a `Rake Preview` and serve it all up with a `Rake Deploy`.

##Potential Downside?

To be fair, AlBlue's blog also lists some [possible disadvantages of Octopress][2]. Part of what he mentions is the lack of separation between content and plumbing, in that there’s really five sets of things to manage:

1. The source posts (in Markdown format)
1. The layout and supporting scaffolding (in HTML/Liquid templates)
1. The plugins for Jekyll to know how to process the Liquid templates)
1. The Octopress supporting management code
1. The published HTML

His point is that the first two items (the source posts, layout and templates) should be in source control, but the:

>plugins and octopress management code really need to live in a different Git repository, though, so that they can be upgraded independently.

This makes a lot of sense, but I don't feel bothered by this at the moment, and fully expect the gap here to be addressed sometime in the near future.

Getting a new theme installed was certainly a very straightforward exercise.

##Getting Started with Octopress

Thanks to the following blog posts for help with getting this set up:

* [Creating a Github blog with Octopress](http://www.tomordonez.com/blog/2012/06/04/creating-a-github-blog-using-octopress/)
* [Mett Gemmell on blogging with Octopress](http://mattgemmell.com/2011/09/12/blogging-with-octopress/)

and thanks also for very timely Twitter help from GitHubber [Matthew McCullough](https://twitter.com/matthewmccull):

![Twitter Conversation with @matthewmccull](/images/posts/github-pages-user-versus-project-pages.png)

##More Cool Octopress Resources

In the process of researching Octopress, I stumbled across some other helpful resources, so I've put them here in the hope they might be helpful to others too:

* [Switching from Wordpress to Octopress][3]
* [Directory structure of Octopress](http://stackoverflow.com/questions/12328828/directory-structure-of-octopress)
* [Octopress tips by Scott Watermasysk](http://www.scottw.com/octopress-tips)

Github pages aren't the only game in town, as [@aeroplanesoft](http://twitter.com/aeroplanesoft) pointed out:

![Hosting Octopress on Amazon S3](/images/posts/hosting-octopress-s3.png)

If you're using `rbenv`, as I was initially, then start with [Blog with Octopress and Github Pages][26] for a good description of working with `rbenv`.

##Customize your Blog!

As Wynn Netherland points out, [Octopress Classic is the new Kubrick][24], so customize your blog. Make it your own. Take a look at some of the [Octopress "hidden" features][25] and get creative (I really like the Octopress theme fellow DDD Denver member Leo Gorodinski is using [on his blog](http://gorodinski.com)). Or, if you are front-end design-challenged like me, get an expert like [Jordan McCullough](https://twitter.com/thejordanmcc) to develop a theme for you. " Friends don't let friends stick with the Octopress default template. "

This started out as a post about installing Octopress, and became something much more for me. I've found since I stopped blogging that I have amassed a huge amount of notes and sites captured in Evernote, but I haven't been sharing my discoveries back with the wider community. So I've resolved to write a blog post instead of stashing away things I find into my own private area, add commentary when I can, and write substantial informational posts of my own from time to time. That way others can benefit from what I'm learning.

##Serve the Community

As Scott Hanselman said in [Your Blog is the Engine of Community][23]:

>**I would encourage you _all_ to blog more. Tweet less.** Blogs are owned by you. They are easily found, easily linked to, and great conversations happen with great blog posts. The river of social media rushes on and those conversations are long forgotten. A great blog post is forever. Today's real-time social media is quickly forgotten.

I'll never even come close to being as prolific as Scott Hanselman or Ayende Rahien (I don't know how they do it), but I'll aim for something of a sustainable cadence to my posts. Don't make the same mistake I've been making by stashing useful content and your valuable knowledge in a private location. [Own your own content][22], and don't be afraid to share it widely so that others can learn.

>Don't be a meme, be a movement. - [Scott Hanselman][23]

[0]: http://alblue.bandlem.com/2012/02/advantages-of-octopress.html
[1]: http://joelhooks.com/blog/2012/07/25/fresh-start-migrating-wordpress-octopress/
[2]: http://alblue.bandlem.com/2012/02/disadvantages-of-octopress.html
[3]: http://adampreble.net/blog/2012/09/another-octopress-blog/
[5]: http://redsquirrel.com/dave/work/a2j/patterns/BreakableToys.html
[22]: http://www.hanselman.com/blog/YourWordsAreWasted.aspx
[23]: http://www.hanselman.com/blog/YourBlogIsTheEngineOfCommunity.aspx
[24]: http://wynnnetherland.com/journal/octopress-classic-is-the-new-kubrick
[25]: http://www.meatleasing.com/octopress-hidden-features/index.html
[26]: http://kvz.io/blog/2012/09/25/blog-with-octopress/
[27]: http://www.neilsmithline.com/blog/2012/05/26/octopress-is-pretty-great/