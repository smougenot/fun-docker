#!/bin/sh
#
#  Init for vultr VM (or any brand new centos7)
#


# git docker
yum install -y \
  git docker \
  htop ncdu bash-completion

# start docker 
service docker start

# fig
curl -L https://github.com/docker/fig/releases/download/1.0.1/fig-`uname -s`-`uname -m` \
  > /usr/local/bin/fig; 
chmod +x /usr/local/bin/fig;

# init repo (ro)
cd /opt; \
  git clone https://github.com/smougenot/java-centos-docker.git; \
  git clone https://github.com/smougenot/fun-docker.git;

# get docker image
docker pull smougenot/java-centos:7
docker pull progrium/busybox:latest
docker pull ubuntu:trusty

# lancer gitlab
mkdir -p /opt/gitlab;
curl -L https://raw.githubusercontent.com/sameersbn/docker-gitlab/master/fig.yml \
  > /opt/gitlab/fig.yml;
cd /opt/gitlab;
fig pull
