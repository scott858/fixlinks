#!/bin/sh
export rootfs=/opt/sysroots/odroid-c2-mate
#export toolchain=/opt/toolchains/gcc-linaro-aarch64-linux-gnu-4.9-2014.09_linux/bin/aarch64-linux-gnu-
export toolchain=/opt/toolchains/gcc-linaro-5.3.1-2016.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-

./configure \
 -v \
 -prefix /usr/local \
 -extprefix $rootfs/usr/local \
 -opensource \
 -release \
 -make libs \
 -confirm-license \
 -developer-build \
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
 -no-use-gold-linker \
# the config that worked didn't use gold linker though it wasn't explicitly 
# turned off

#also I relinked the device filesystem directly after distro-upgrade and again
#after install qt deps

# -v \
