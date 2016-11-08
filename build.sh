#!/usr/bin/env bash

packer build -only=virtualbox-iso ./vagrantbox.json
