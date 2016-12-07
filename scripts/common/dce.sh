#!/bin/sh -eux

dce_version="2.2.0"
dce_namespace="daocloud.io/daocloud"

for image in \
  "dce" \
  "dce-controller" \
  "dce-etcd" \
  "dce-swarm" \
  "dce-agent";
do
  docker pull \
    "${dce_namespace}/${image}:${dce_version}"
done

docker tag \
  daocloud.io/daocloud/dce:2.2.0 \
  daocloud.io/daocloud/dce:latest
