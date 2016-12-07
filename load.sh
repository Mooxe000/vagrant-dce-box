#!/usr/bin/env bash

vagrant box remove ubuntu-16.04/daocloud-dce-2.2.0
vagrant box add ubuntu-16.04/daocloud-dce-2.2.0 ./build/ubuntu-16.04.dce-2.2.0.virtualbox.box
