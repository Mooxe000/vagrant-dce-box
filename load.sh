#!/usr/bin/env bash

vagrant box remove ubuntu-16.10/daocloud-dce-2.5.1
vagrant box add ubuntu-16.10/daocloud-dce-2.5.1 ./build/ubuntu-16.10_dce-2.5.1.virtualbox.box
