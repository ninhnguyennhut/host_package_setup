#ubuntu 18 LTS

sudo apt-get install git cmake vim autoconf -y
sudo apt install python-minimal -y
sudo apt-get install gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat libsdl1.2-dev xterm -y
sudo apt-get install libcurl-ocaml-dev libmosquitto-dev libmosquittopp-dev libusb-1.0-0-dev libssl-ocaml-dev -y
sudo apt-get install bison flex swig -y


#yocto package install

sudo apt-get install gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat libsdl1.2-dev xterm


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

