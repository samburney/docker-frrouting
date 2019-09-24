# docker-frrouting
Docker containerised [FRRouting](https://github.com/frrouting/frrouting).

Images currently available:
- Latest (Built from master): samburney/frrouting:latest
- Latest Alpine (Built from alpine branch): samburney/frrouting:alpine
- FRR 7.1 on Ubuntu 18.04: samburney/frrouting:7.1-ubuntu18.04
- FRR 7.1 on Alpine 3.10: samburney/frrouting:7.1-alpine

## Usage
The following example will start ospfd, ospf6d and bgpd:
```
## Pull latest image from Docker Hub
docker pull samburney/frrouting:latest

## Set the daemons you want to run in the DAEMONS environment variable 
docker run --privileged -e DAEMONS="ospfd bgpd ospf6d" samburney/frrouting:latest
```
