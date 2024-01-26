#! /bin/bash
#构建arm设备上可用的dtbtool二进制
aarch64-linux-gnu-gcc source/dtbtool.c -o dtbtool-aarch64

arm-linux-gnueabi-gcc source/dtbtool.c -o dtbtool-arm

cat dtbtool-aarch64 dtbtool-arm > dtbtool

chmod 755 dtbtool
