#!/bin/sh
export rootfs=/opt/b2qt/2.0.1/sysroots/odroid-c2-mate
export toolchain=/opt/toolchains/gcc-linaro-aarch64-linux-gnu-4.9-2014.09_linux/bin/aarch64-linux-gnu-

./configure -v -opensource -confirm-license -debug -developer-build -prefix /usr/local \
  -hostprefix $PWD -extprefix $rootfs/usr/local  -c++std c++11 \
  -sysroot $rootfs -nomake tests -no-pch -opengl es2 -xcb -eglfs -qpa xcb \
  -device linux-odroid-c2-g++  -device-option CROSS_COMPILE=$toolchain -xplatform devices/linux-odroid-c2-g++ \

#  -xplatform devices/linux-odroid-c2-g++
#/opt/toolchains/gcc-linaro-5.3.1-2016.05-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-
