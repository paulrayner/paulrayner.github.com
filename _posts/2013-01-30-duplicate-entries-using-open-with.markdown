---
layout: post
title: "Duplicate Entries using 'Open With' on OS X"
date: 2013-01-02 16:57
comments: true
sharing: true
categories: [OSX, Productivity]
---

I noticed today on my MBP running Mountain Lion that using "Open With" (control+click on a file in Finder) showed duplicate entries for the file. 

I'm unsure as to what I did that caused this problem to happen, though [a recent thread on Apple Support Communities](https://discussions.apple.com/thread/4250905?start=0&tstart=0) indicates it has something to do with clone images. I recently updated XCode through the App Store, and now have a duplicate entry for XCode when I do "Open With," so perhaps it's happening when I update an application.

As one of the responses in the thread suggested, the solution for me was to run the following command in my Terminal window:

    /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain system -domain user


I didn’t need to logout. I just relaunched Finder (control+option+click on Finder icon in the Dock) and the problem went away.