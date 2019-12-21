#ubuntu 18 LTS

sudo apt-get install git cmake vim autoconf -y
sudo apt install python-minimal -y
sudo apt-get install gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat libsdl1.2-dev xterm -y
sudo apt-get install libcurl-ocaml-dev libmosquitto-dev libmosquittopp-dev libusb-1.0-0-dev libssl-ocaml-dev -y
sudo apt-get install bison flex swig -y

crossbuild qt5

https://wiki.qt.io/RaspberryPi2EGLFS

sudo apt-get install libudev-dev libinput-dev libts-dev libxcb-xinerama0-dev libxcb-xinerama0 libx11-dev

#yocto package install

sudo apt-get install gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat libsdl1.2-dev xterm

Ubuntu 18.04.2 tested build opencv

- sudo apt-get -y install libopencv-dev build-essential cmake git libgtk2.0-dev pkg-config python-dev python-numpy libdc1394-22 libdc1394-22-dev libjpeg-dev libpng-dev libtiff5-dev libavcodec-dev libavformat-dev libswscale-dev libxine2-dev libgstreamer-ocaml-dev libgstreamer-plugins-base1.0-dev libv4l-dev libtbb-dev libqt4-dev libfaac-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils unzip

- cd opencv-3.4.6
- mkdir release
- cd release

-cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_IPP=OFF -D OPENCV_EXTRA_MODULES_PATH=/home/fanning/workspace/linux/opencv_contrib-3.4.6/modules /home/fanning/workspace/linux/opencv-3.4.6

#stlink stm32f4 black board
SWDIO --- Pin 7, PA13/TMS/JTMS_SWDIO
GND ----- Pin 4, GND
SWCLK --- Pin9, PA14/TCK/JTMS_SWCLK
3.3V ---- Pin 1, 3V3

install cuda for dell 7559 gtx960M

sudo add-apt-repository ppa:graphics-drivers/ppa

sudo apt update

sudo ubuntu-drivers autoinstall
reboot

sudo apt install nvidia-cuda-toolkit gcc-6

nvcc --version

