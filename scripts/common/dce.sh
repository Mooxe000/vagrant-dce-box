#!/bin/sh -eux

docker pull \
  daocloud.io/daocloud/dce:2.2.0
docker tag \
  daocloud.io/daocloud/dce:2.2.0 \
  daocloud.io/daocloud/dce:latest
