#!/bin/sh
#
#  Init for vultr VM (or any brand new centos7)
#


# git docker
yum install -y git docker

# start docker 
service docker start

# init repo (ro)
cd /opt; \
  git clone https://github.com/smougenot/java-centos-docker.git; \
  git clone https://github.com/smougenot/fun-docker.git;

# get docker image
docker pull smougenot/java-centos:7
docker pull progrium/busybox:latest
docker pull ubuntu:trusty