#!/bin/sh -eux

dce_version="2.5.1"
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
  daocloud.io/daocloud/dce:${dce_version} \
  daocloud.io/daocloud/dce:latest

# bash -c "$(docker run --rm daocloud.io/daocloud/dce:2.5.1 install --advertise-addr 192.168.33.11)"
