#!/bin/sh

sudo apt install npm

# update repos to ali
npm config set registry https://registry.npm.taobao.org/

# check
npm config get registry
