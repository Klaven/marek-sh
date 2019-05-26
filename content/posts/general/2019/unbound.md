---
title: "Unbound DNS"
date: "2018-08-01"
showDate: true
draft: true
tags: 
 - DNS
---

In the aftermath of my arm kubernetes cluster, I have decided to run my clusters on x64 for the time being due to easier support of running applications. This left me with a delia, I had three perfectly good Rock64Pro's just waiting for a job to do. Due to the increase in demand for internal IPs on my network it became clear that I wanted, and needed a better way to handle addressing all of these.

My initial attempts had been to use only my router, but there where a few limitation that I faced here as well as it had other jobs I wanted it to focus on.

In to the rescue, my newly usesless Rock64Pros, just itching for a job to do. Not only do these have pleanty of power (more then I need for DNS resolution to be honest) but they have a nice low power consumption so I should not be hurting my monthly bill leaving two of these bad boys plugged in all the time.

## Unbound
Unbound is what I ended up using, although I experimented with Bind and a few others. In the end what sold me on Unbound was the easy in setup.

### Unbound Setup
I setup unbound on ubuntu 18.04. The setup was super easy and the configuration was even easier. There was a hickup (as there always is) that hung me up for a little bit that I will explain further down. 