---
title: "Mini Cluster"
date: "2018-11-26"
showDate: true
draft: false
tags: ["blog","story"]
---

So I have been working on kubernetes as of late and decided that if I was going to call myself a real kubernetes expert I should be running one in my home around the clock. I will write posts following these miss adventures, as I am sure I'll do a lot of stupid things that you all can ether learn from, or use to make ones self feel better about themselves :).

I have made some design choices already. First it is going to be ARM powered as most of the time I have run it on xeon processors or some other x86 processor. I figured the best learning experiences where the ones where I know the least. Another consideration that helped me pick ARM was the fact that mostly I will just want to run light workloads and so the less energy I use the better.

I thought about getting just a single x64 machines and run the master and worker node on it, but felt like that was really not that awesome and does not often replicate the issues found in the real world.

For my MVP I have decided that I will forgo storage considerations, while it should not be too hard to setup, I don't want to worry about trying to figure out what I want to do for that right now. Nor do I want to buy it. I have been watching the Rook project and think that it would be interesting to do something with that.

That being said I have the hardware in the mail, 2 RockPro64 and 1 2gb Pine64 from Pine64. Why the one Pine vs 3 Rocks? I already owned it and it enabled me to be a little cheaper in purchasing the hardware. :) that is all. I plan on in the future switching it out, or adding a new RockPro when needed. the beauty of a k8s cluster.

I also ordered eMMC cards for the RockPros as the Rocks are going to be the master nodes. (I know, someone is itching to say I will only start with three nodes) I was thinking at first I would just run a one node master with two workers, OR a three master three worker setup with my workload running on the master nodes :/ But what I do know, I can only afford 3 right now :)

In the future, if I need more, I can always add more nodes.

Anyhow, I will write my next post when I get to setting up the hardware :)

Marek
