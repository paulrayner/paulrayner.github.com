---
layout: post
title: "Cleaning up 93 grammar paradigms with AI agents"
date: 2025-09-15 04:00:00 -0600
tags: [AI, Development, Productivity, Claude, Hebrew]
excerpt: Last week I had to deal with a mess I'd been putting off for way too long. Here's how I used AI agents to systematically clean up 93 grammar paradigms in parallel.
image: ai-cleanup/2025-09-12 binah-parallel-cleanup-edited-and-15x-thumbnail.png
comments: true
---

Last week I had to deal with a mess I'd been putting off for way too long.

Working on my Biblical Hebrew learning app, I've built up 93 different grammar paradigms (patterns showing how words change form in different contexts) over time - verbs, adjectives, prepositions, pronouns, etc. Each one has morphological notes and Biblical examples.

![Hebrew paradigms in the app interface](/assets/ai-cleanup/2025-09-12 binah paradigms app screenshot.png)

The problem: I've been learning as I go, which means my earlier work looked... different from my later work. Really different. The inconsistency was bugging me, but manually reviewing and standardizing 93 paradigms across 6 files felt overwhelming.

![Initial compliance report showing inconsistent paradigms](/assets/ai-cleanup/2025-09-12 binah paradigms compliance report.png)

So I decided to scale up an approach I'd been using for smaller cleanups - letting AI agents handle the audit and fix work, but this time across multiple files in parallel.

First, I had Claude examine all the paradigms and create a structure guide. After I reviewed and tweaked that guide, I set multiple Claude Code agents to work simultaneously - each one auditing a different file, checking compliance against the guide, and implementing the fixes.

![The structure guide that became our compliance standard](/assets/ai-cleanup/2025-09-12 binah paradigms structure guide.png)

I cross-validated some of the results with ChatGPT 5 to make sure the assessments were accurate (e.g. "Is this form actually included in this verse?"), and validated some things across Hebrew grammars.

Of course, it wasn't all smooth. The agents initially gave some wildly incorrect audit results (0% compliance for some verb patterns that were actually fine!), and Claude's first parallelization approach would have sliced work across cleanup tasks rather than files. Had to iterate on the approach.

But once we got the division of work right - one agent per paradigm category file - it worked beautifully. Ended up with 100% compliance across all 93 paradigms in about a half-day's work for everything.

The final results were exactly what I was hoping for:

![Final compliance report showing 100% compliance](/assets/ai-cleanup/2025-09-12 binah paradigms compliance report 2.png)

A few things that made this work:

→ **File separation helped** - Each paradigm category lives in its own file (pronouns, questions, imperatives, copulas, etc.) with clear responsibilities. Made it possible to process them in parallel.

→ **Good division of labor** - The agents handled the tedious, detailed work while I focused on figuring out what the structure should actually be.

→ **Parallel agents changed everything** - Instead of processing files sequentially, I had multiple agents working simultaneously - each auditing and fixing a different file for compliance. Turned what could have been weeks into hours.

Here's a recording of the parallel cleanup process in action:

<video width="100%" autoplay loop muted controls poster="/assets/ai-cleanup/2025-09-12 binah-parallel-cleanup-edited-and-15x-thumbnail.png">
  <source src="/assets/ai-cleanup/cleanup-process-web.mp4" type="video/mp4">
  <p>Your browser doesn't support HTML5 video. <a href="/assets/ai-cleanup/cleanup-process-web.mp4">Download the video</a> to see the 7.5-minute cleanup process (sped up 15x).</p>
</video>

*7.5-minute cleanup process, sped up 15x*

→ **Built-in compliance checking** - Each agent audited against the structure guide before implementing fixes, then validated the results. Gave me confidence the cleanup was thorough and consistent.

The nice surprise was that while the audit step was running, I could work on other parts of the app. Then I left the fix steps running after I was done for the day and checked the results the next morning.

Going through this process also showed me that some files have grown too big - the verb paradigms file now has 19 different patterns, so I'll be looking for ways to break down some of the larger ones into more focused files.

Not sure how long this would have taken me manually, but I probably would have gotten distracted and never finished because of higher priorities.

Looking at my recent commits, about 75% of my work lately has been maintenance - bug fixes, documentation updates, and cleanup tasks like this. That's a lot of non-feature work that benefits from this kind of systematic approach.

Breaking it down from my last 50 commits (6 days):
- **30% bug fixes** - UI tweaks, API corrections, responsive design
- **32% documentation** - compliance reports, planning docs, structure guides  
- **12% cleanup/refactoring** - code formatting, citation standardization
- **24% new features** - the fun stuff
- **2% configuration** - deployment, tooling changes

**A few lessons learned:**

→ **I still have a lot to learn about using agents effectively.** This isn't the easiest part of Claude Code to figure out, and I probably need to re-read the [sub-agents guide](https://docs.anthropic.com/en/docs/claude-code/sub_agents) to get better at this.

→ **A naive approach doesn't work.** It's clear I often don't provide enough context for the AI to figure out what it needs to do. Asking questions and getting recommendations is a key part of the process.

→ **I'm making mistakes, but I'm happy with my progress.** This type of development is actually fun for me - it dramatically reduces the busy work I used to have to do.

→ **Tasks that used to feel tedious are now enjoyable and quick** compared to how they used to feel.

Anyone else using AI for large-scale cleanup tasks like this? Curious what approaches have worked for you.