---
title: "ARM Cluster Results"
date: 2019-05-19T00:13:30-04:00
draft: false  
toc: false
images:
tags: 
  - Kubernetes
  - ARM
---

### The Truth about ARM
So as it turns out. all my software runs on arm just fine. I find that most of the stuff I write is ether written in GO or Rust and cross compiling is as simple as a flag. That being said. this is not true of other software that I wanted to move onto the ARM cluster. While the RockPro's where handling the cluster just fine I was not able to run some of my more essential software on it without maintaining arm branches myself. Not only is this more work then I had originally hoped for it was quickly becoming painful.

## What fate befell these machines?
For all of you worried about the ARM machines, I have another use for them that they will serve just perfect for (well two of the three at least). If you are interested in setting up your own DNS proxy, that will be the source of at least another blog post if not 2.

## The future of kubernetes at home?
Dont give up on me just yet. The plan is now to run kubernetes on x64 machines. I just have to figure out what hardware I want to get to support them.