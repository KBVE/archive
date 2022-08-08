---
layout: default
title: Docker
grand_parent: Protocol
parent: VM
has_children: false
---
# Docker
- Docker is a hybrid-source application designed to deploy nested-virtual machines that are containerized applications.  


## Docker Output JSON
- `result=$(curl --unix-socket /var/run/docker.sock http://localhost/containers/json --silent 2>&1) && echo $result`
- - This will grab the current docker-instance information and return it in JSON format! 

## Docker Grab Last Detached Container
- 