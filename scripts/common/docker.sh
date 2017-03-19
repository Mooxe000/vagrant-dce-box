#!/bin/sh -eux

# Install docker
# curl -sSL https://get.daocloud.io/docker-experimental | sh
curl -sSL https://get.daocloud.io/docker | sh
usermod -aG docker vagrant

# Install docker-compose
curl -L https://get.daocloud.io/docker/compose/releases/download/1.11.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

mv /tmp/daemon.json /etc/docker

systemctl restart docker.service
