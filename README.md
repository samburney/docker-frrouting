# docker-frrouting
Docker containerised [FRRouting](https://github.com/frrouting/frrouting).

Previously built in an Alpine environment for size, but as the Alpine package is currently only FRR 5.0.1 moving to Ubuntu allowed the use of the latest official Debian/Ubuntu packages.

Images currently available:
- Latest (Built from Master): samburney/frrouting:latest
- FRR 7.0 on Ubuntu 18.04: samburney/frrouting:7.0-ubuntu18.04
- FRR 5.0.1 on Alpine 3.9: samburney/frrouting:5.0.1-alpine

## Usage
The following example will start ospfd, ospf6d and bgpd:
```
## Pull latest image from Docker Hub
docker pull samburney/frrouting:latest

## Set the daemons you want to run in the DAEMONS environment variable 
docker run --privileged -e DAEMONS="ospfd bgpd ospf6d" samburney/frrouting:latest
```