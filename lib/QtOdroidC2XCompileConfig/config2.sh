#!/bin/sh
./configure -release -confirm-license -opensource -platform linux-g++  -opengl es2 -no-pch -qt-pcre -cups -system-xcb -system-sqlite -nomake tests -nomake examples -no-kms -skip qtwebengine -gstreamer 1.0 -no-warnings-are-errors --enable-egl

#./configure -opensource -v -confirm-license -debug -developer-build -prefix /usr/local \
#  -c++std c++11\
#  -nomake tests -no-pch -opengl es2 -xcb -eglfs -qpa xcb \

#/opt/toolchains/gcc-linaro-5.3.1-2016.05-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-
