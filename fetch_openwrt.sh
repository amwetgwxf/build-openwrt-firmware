#!/bin/bash

(git clone -b openwrt-21.02 --single-branch https://github.com/amwetgwxf/immortalwrt openwrt) || (cd openwrt && git stash && git pull)

cd openwrt

./scripts/feeds update -a
./scripts/feeds install -a
