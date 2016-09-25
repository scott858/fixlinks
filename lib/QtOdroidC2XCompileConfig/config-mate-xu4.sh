#!/bin/sh
export rootfs=/opt/sysroots/odroid-xu4-mate
#export toolchain=/opt/toolchains/gcc-linaro-aarch64-linux-gnu-4.9-2014.09_linux/bin/aarch64-linux-gnu-
export toolchain=/opt/toolchains/gcc-linaro-5.3.1-2016.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
# -v \

./configure \
 -prefix /usr/local/Qt/5.7.0 \
 -extprefix $rootfs/usr/local/Qt/5.7.0 \
 -commercial \
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
 -qpa xcb \
 -no-warnings-are-errors \
 -device linux-odroid-xu3-g++ \
 -device-option CROSS_COMPILE=$toolchain \
 -xplatform devices/linux-odroid-xu3-g++ \
 -gstreamer 1.0 \
 --enable-egl \

# -no-use-gold-linker \
#-v \
