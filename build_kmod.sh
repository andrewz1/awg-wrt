#!/bin/bash

set -e

vm="unknown"
if [ -n "$1" ] ; then
	vm="$1"
fi

make -j$(nproc) package/kmod-amneziawg/clean
make -j$(nproc) LINUX_VERMAGIC=$vm package/kmod-amneziawg/compile

make -j$(nproc) package/amneziawg-go/clean
make -j$(nproc) package/amneziawg-go/compile

make -j$(nproc) package/amneziawg-tools/clean
make -j$(nproc) package/amneziawg-tools/compile

make -j$(nproc) package/luci-proto-amneziawg/clean
make -j$(nproc) package/luci-proto-amneziawg/compile
