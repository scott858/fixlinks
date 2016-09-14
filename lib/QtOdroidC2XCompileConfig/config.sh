#!/bin/sh
export rootfs=/opt/b2qt/2.0.1/sysroots/odroid-c2-mate
export toolchain=/opt/toolchains/gcc-linaro-aarch64-linux-gnu-4.9-2014.09_linux/bin/aarch64-linux-gnu-

./configure \
 -opensource \
 -release \
 -make libs \
 -confirm-license \
 -debug \
 -developer-build \
 -prefix /usr/local \
 -hostprefix $PWD \
 -extprefix $rootfs/usr/local \
 -c++std c++11 \
 -sysroot $rootfs \
 -nomake tests \
 -nomake examples \
 -no-kms \
 -no-pch \
 -skip qtwebengine \
 -qt-pcre \
 -cups \
 -system-xcb \
 -system-sqlite \
 -opengl es2 \
 -xcb \
 -eglfs \
 --enable-egl \
 -qpa xcb \
 -no-warnings-are-errors \
 -device linux-odroid-c2-g++ \
 -device-option CROSS_COMPILE=$toolchain \
 -xplatform devices/linux-odroid-c2-g++ \
 -gstreamer 1.0 \
# -no-use-gold-linker \
# -v \

#  -xplatform devices/linux-odroid-c2-g++
#/opt/toolchains/gcc-linaro-5.3.1-2016.05-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-
