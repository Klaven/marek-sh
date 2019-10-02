---
title: "Kubernetes Control Plane Architecture"
date: 2019-05-19T00:13:30-04:00
draft: true  
toc: false
images:
tags: 
  - Kubernetes
---

# Kubernetes Control Plane Architecture

Kubernetes had taken a huge lead in the world of microservices and container orchestraition, but how do the control-plane nodes work? I'm not going to go into every little detail but will try to have a all encompassing high level view. Later I will be looking into breaking down each part into further detail.

### What is the control plane

The control plane is very consistant with it's name. It is the set of applications that run on a machine that manage the cluster. The control plane is mostly made up of the `apiServer`, `controllerManager` and the `scheduler` although sometimes etcd is "stacked" on these same nodes this is not needed and your etcd cluster can be create and maintained on it's own.


