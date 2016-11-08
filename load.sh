#!/usr/bin/env bash

vagrant box remove ubuntu-16.04/daocloud-dce-2.1.1
vagrant box add ubuntu-16.04/daocloud-dce-2.1.1 ./build/ubuntu-16.04.virtualbox.box
