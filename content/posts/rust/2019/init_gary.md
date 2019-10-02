---
title: "ARM Cluster Results"
date: 2018-12-19T00:13:30-04:00
draft: true  
toc: false
images:
tags: 
  - Kubernetes
  - Workload Orchestration
---

# gary init cluster
Wait what?

## Kubernetes
Kubernetes is the end all be all right? it's perfect in every senario, it is the silver bullet right?! The sad truth of the answer is that Kubernetes is a pioneer in the area. Kubernetes has done amazing things, at no point am I saying anything differently.

But....

##### Problem One

Kubernetes hurts for small and medium clusters, you want to run high avalibility but that means at least three machines/nodes need to be control plane (cp). Now I know some of you are going to point out you can remove the control plane taint and run workloads on the masters, but do you really want that? The answer is no. no you don't. Not only is that messy but the raft protocol running on those is VERY chatty and expensive.

The solution, no control plane nodes.

Sometimes the simple answer is the best answer. Gary has a strict no control plane polocy. period.

##### Problem Two:

Kubernetes is sometimes... hungry. for all your resources. This was/is a desin dessition. It has let kubernetes move quickly. While Gary will also move quickly, we will also continuesly work to improve performance. It's your cluster, you should not spend your resources running the orchestrator.


