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

sudo apt-get install python python3 python2.7

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


ubuntu16.04

Just to clarify, the install instructions for Ubuntu 16.04 should be updated; there are several errors, one being that cuda-10-1 is the appropriate cuda package, the other is that libnvinfer-plugin6=6.0.1-1+cuda10.1 is missing.

# Add NVIDIA package repositories
# Add HTTPS support for apt-key
sudo apt-get install gnupg-curl
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_10.1.243-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1604_10.1.243-1_amd64.deb
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
sudo apt-get update
wget http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1604/x86_64/nvidia-machine-learning-repo-ubuntu1604_1.0.0-1_amd64.deb
sudo apt install ./nvidia-machine-learning-repo-ubuntu1604_1.0.0-1_amd64.deb
sudo apt-get update

# Install NVIDIA driver
# Issue with driver install requires creating /usr/lib/nvidia
sudo mkdir /usr/lib/nvidia
sudo apt-get install --no-install-recommends nvidia-418
# Reboot. Check that GPUs are visible using the command: nvidia-smi

# Install development and runtime libraries (~4GB)
sudo apt-get install --no-install-recommends \
    cuda-10-1 \
    libcudnn7=7.6.4.38-1+cuda10.1  \
    libcudnn7-dev=7.6.4.38-1+cuda10.1


# Install TensorRT. Requires that libcudnn7 is installed above.
sudo apt-get install -y --no-install-recommends libnvinfer6=6.0.1-1+cuda10.1 \
    libnvinfer-dev=6.0.1-1+cuda10.1 \
    libnvinfer-plugin6=6.0.1-1+cuda10.1





sudo apt install curl

Once that’s done, download and run the Node.js 8.x installer:

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

The installer will create a source file for the official repo, pulls down the signing key and even does you a solid by running an apt update for you.

All that’s left to do is to install (or upgrade to) the latest version of Node.js 8.x:

sudo apt install nodejs



