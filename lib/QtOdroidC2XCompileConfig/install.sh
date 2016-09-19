sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo rm /usr/lib/aarch64-linux-gnu/*Qt*
sudo apt-get remove mali-x11
sudo build-dep qt5-default
sudo apt-get install qt5-default libqt5serialport5-dev libusb-1.0-0-dev
sudo apt-get install libxcb-xinerama0-dev 
sudo apt-get install build-essential perl python git
sudo apt-get install "^libxcb.*" libx11-xcb-dev libglu1-mesa-dev libxrender-dev libxi-dev
sudo apt-get install flex bison gperf libicu-dev libxslt-dev ruby
sudo apt-get install libssl-dev libxcursor-dev libxcomposite-dev libxdamage-dev libxrandr-dev libfontconfig1-dev libcap-dev libxtst-dev libpulse-dev libudev-dev libpci-dev libnss3-dev libasound2-dev libxss-dev libegl1-mesa-dev gperf bison
sudo apt-get install libasound2-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev
sudo apt download mali-x11
sudo dpkg -i --force-overwrite mali-x11*.deb
sudo apt-get install xserver-xorg-video-mali
sudo ldconfig

# also required to make absolute paths pointing to file system root relative on device file system
# and replace khrplatform.h in /usr/include/KHR with its patched version
