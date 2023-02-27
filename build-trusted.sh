#!/bin/bash

export CROSS_COMPILE=arm-ostl-linux-gnueabi-
export ARCH=arm
export KBUILD_OUTPUT=./build
#make distclean
make stm32mp15_trusted_defconfig
make DEVICE_TREE=stm32mp151a-kiwi all -j8