---
title: "Kubernetes Cluster Part 2"
date: 2019-05-19T00:13:30-04:00
draft: true  
toc: false
images:
tags: 
  - Kubernetes
  - KVM
---

The KVM Kubernetes cluster

So, it's been a long standing goal of mine to run and maintain a kubernetes cluster. The initial cluster I created was a ARM based cluster built on top of the RockPro64 platform. These devices where powerful, energy efficant and a good price. Why you ask did I not keep it? Well, in the end I decided I wanted to run EVERYTHING on it. And at the time, not everything was easy to get to run on ARM. I mean. HELM did not even run on ARM. I know this changes with V3 but v3 was a long ways away. 

Now, most everything I want to run can run on ARM, that is true. Ubiquitis management software, Kodi, Any of my services I have written and plan to run. And this is true, there where a few reasons I dropped the idea.
 - Helm is important to me as i'm moving my house to infrastructure as code, and Helm is easy and fun.
 - 4GB of memory really is not enough for kubernetes control plane nodes. while this is scary to admit, it is true.
 - HA was not obtainable without 5 Rock64Pro's with two workers. Not only is this getting expensive on the RockPro side, it's starting to take a lot of ports on my switches too! In the end, I will need to buy a larger switch anyhow but for now I can make do with what I have.
 - Even with a Rock cluster, I needed a good DNS solution, running it inside the cluster seemed wrong as it is something the cluster would depend on. So this added another two rocks to the system (we would be up to 7 if you lost count)
 - You will be building and maintaining a cluster on a kernel/distro that is not mainline and well tested. As I have said I want to move all my stuff to this cluster, as well as not tinkering with it every day to ensure it is still working, this was also not optimal.

So, while making a kubernetes cluster on the RockPro64's is fun, and deffenetly possible, it just was not working out for my needs. 

### Where that leaves us:
as of today, that leaves me without a cluster. But tomorrow? My new setup will consist of a single KVM server (maybe more in the future if I need it them.). I know, that while I will have three control plane nodes I will suffer outages if my single KVM server dies. I will hopfully add two more servers to this in the future and spread the cp nodes out to midegate this risk.

What happened to the initial RockPro64's accumulating dust? They have been put to work! my DNS solution around unbound has been configured on them! well, two of them at least. You can read about my `unbound` configureation if you like.

If you would like to take part in the creation of this setup, I stream most of the work I do on it on twitch.tv/klavenx! This includes work on kubernetes and other cncf tooling aloung with other opensource projects!
