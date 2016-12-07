#!/bin/sh -eux

rm -rf /etc/localtime
ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
apt install -y ntpdate
