#ubuntu 18 LTS

sudo apt-get install git cmake vim autoconf -y
sudo apt install python-minimal -y
sudo apt-get install gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat libsdl1.2-dev xterm -y
sudo apt-get install libcurl-ocaml-dev libmosquitto-dev libmosquittopp-dev libusb-1.0-0-dev libssl-ocaml-dev -y
sudo apt-get install bison flex swig libtool curl -y
sudo apt-get install uuid-dev libacl1-dev liblzo2-dev libzstd-dev lib32z1 device-tree-compiler minicom

install golang
wget https://dl.google.com/go/go1.15.2.linux-amd64.tar.gz
sudo tar -xvf go1.15.2.linux-amd64.tar.gz
sudo mv go /usr/local

install node
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install nodejs


crossbuild qt5

https://wiki.qt.io/RaspberryPi2EGLFS

sudo apt-get install libudev-dev libinput-dev libts-dev libxcb-xinerama0-dev libxcb-xinerama0 libx11-dev

#yocto package install

sudo apt-get install python python3 python2.7

sudo apt-get install gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat libsdl1.2-dev xterm

Ubuntu 18.04.2 tested build opencv

sudo apt-get -y install libopencv-dev build-essential cmake git libgtk2.0-dev pkg-config python-dev python-numpy libdc1394-22 libdc1394-22-dev libjpeg-dev libpng-dev libtiff5-dev libavcodec-dev libavformat-dev libswscale-dev libxine2-dev libgstreamer-ocaml-dev libgstreamer-plugins-base1.0-dev libv4l-dev libtbb-dev libqt4-dev libfaac-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils unzip

cd opencv-3.4.6
mkdir release
cd release

cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_IPP=OFF -D OPENCV_EXTRA_MODULES_PATH=/home/fanning/workspace/linux/opencv_contrib-3.4.6/modules /home/fanning/workspace/linux/opencv-3.4.6

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




1347671239
1497411382
1176217268

package camera install

sudo apt-get install libacl1-dev
sudo apt-get install liblzo2-dev

sudo tar -cvjSf folder.tar.bz2 folder

nguyennhutninh@gmail.com
backup mega acount: "30IwBaHR0OM_IN4m-gXafw"
fanningnguyen@gmail.com

02:81:89:be:b6:64

You need to add proper sudo rights to the cisco user. Create one file in /etc/sudoers.d/ as root, named cisco, and with the following one line content:

cisco ALL=NOPASSWD: /etc/init.d/networking
Also change the access rights to read-only:

sudo chmod 440 /etc/sudoers.d/cisco
More the Ubuntu way would be to use the sudo service networking restart logic, but I do not know how to add this to sudoers file.

send file to camera dev board

# on dev board
tcpsvd -vE 0.0.0.0 21 ftpd -wvS

# on pc linux
ncftpput -u root -p Nguyennhutninh@1412 192.168.1.111 /opt/fanning/ ./rtsp





u-boot splash green

make ARCH=arm CROSS_COMPILE=/home/fanning/workspace/tools/nbv2-compiler/bin/arm-linux-gnueabihf- mrproper

make ARCH=arm CROSS_COMPILE=/home/fanning/workspace/tools/nbv2-compiler/bin/arm-linux-gnueabihf- LicheePi_Zero_480x272LCD_defconfig

make ARCH=arm CROSS_COMPILE=/home/fanning/workspace/tools/nbv2-compiler/bin/arm-linux-gnueabihf- -j8

sudo dd if=/dev/zero of=/dev/mmcblk0 bs=1k count=1023 seek=1
sudo dd if=u-boot-sunxi-with-spl.bin of=/dev/mmcblk0 bs=1024 seek=8

study bbb driver

make ARCH=arm CROSS_COMPILE=/home/fanning/workspace/fpt/tranning/ti-linux-kernel-dev-4.14.108-ti-r113/dl/gcc-linaro-7.4.1-2019.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf- modules_install INSTALL_MOD_PATH=module_ftel

make ARCH=arm CROSS_COMPILE=/home/fanning/workspace/fpt/tranning/ti-linux-kernel-dev-4.14.108-ti-r113/dl/gcc-linaro-7.4.1-2019.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-


convert EPCB.png -type Palette -colors 224 -depth 8 -compress none -verbose BMP3:EPCB.bmp

sudo ip route add 172.30.39.0/24 dev eth0 src 172.30.39.89 table t1

https://felipe.astroza.cl/hacking-hi3518-based-ip-camera/

/sys/devices/platform/pwm-backlight/backlight/pwm-backlight

backup sdcard

make ARCH=arm CROSS_COMPILE=/home/fanning/workspace/tools/gcc-linaro-7.4.1-2019.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf- modules_install INSTALL_MOD_PATH=module_nbv2

make ARCH=arm CROSS_COMPILE=/home/fanning/workspace/tools/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf- modules_install INSTALL_MOD_PATH=module_ftel

@sudo dd if=/dev/zero of=/dev/mmcblk1 bs=1k count=1023 seek=1 status=noxfer@
@sudo dd if=u-boot-sunxi-with-spl.bin of=/dev/mmcblk1 bs=1024 seek=8 status=noxfer@

sudo dd if=/dev/zero of=/dev/sdb bs=1k count=1023 seek=1
sudo dd if=u-boot-sunxi-with-spl.bin of=/dev/sdb bs=1024 seek=8

sudo dd if=/dev/zero of=/dev/mmcblk0 bs=1k count=1023 seek=1
sudo dd if=u-boot-sunxi-with-spl.bin of=/dev/mmcblk0 bs=1024 seek=8


ENABLE=true
MIN_SPEED=1100000
MAX_SPEED=1100000
GOVERNOR=performance
sudo /etc/init.d/cpufrequtils restart

#clear ram cache
sudo su
sync; echo 3 > /proc/sys/vm/drop_caches

make ARCH=arm CROSS_COMPILE=/var/tmp/v3s_sdk/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi- ftel_defconfig
make ARCH=arm CROSS_COMPILE=/var/tmp/v3s_sdk/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi- -j8
make ARCH=arm CROSS_COMPILE=/var/tmp/v3s_sdk/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi- modules_install INSTALL_MOD_PATH=module_ftel


conda create -n K_210 python=3.7.1


make inference MODEL=yolo_mobilev1 DEPTHMUL=0.75 CKPT=data/mobilenet_v1_base_7.h5 IMG=data/people.jpg

conda env export | grep -v "^prefix: " > environment.yml

~/nncase/ncc compile model/mobile_yolo.tflite ./fuck.kmodel -i tflite -o kmodel --dataset ./images

esp8089

ARCH=arm CROSS_COMPILE=/home/fanning/workspace/tools/gcc-linaro-7.4.1-2019.02-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf- make -C ../zero-4.18.y/ M=${PWD} modules

qt5-image-V3s_NBv2

sudo rsync -aAXv / --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} /media

sudo dd if=/dev/sdb | gzip > ./nanopineocore_emmc_02012020.img.gz
sudo gzip -dc nanopineocore.img.gz | sudo dd of=/dev/sdb

sudo mkimage -C none -A arm -T script -d ./boot.cmd ./boot.scr

sudo dd if=/dev/mmcblk1 | gzip > nanopineocore_emmc_07012020.img.gz


sudo sunxi-fel -p spiflash-read 0 16777216 ./fucking.bin

sudo sunxi-fel -p spiflash-write 0 fucking.bin

./build.sh -b nanopi-neo pack -p linux -t kernel

sudo apt-get -y install dbus libdbus-1-dev libdbus-glib-1-2 libdbus-glib-1-dev

sudo rsync -aAXv ./* /media/fanning/rootfs/lib/

sudo rsync -aAXv ./* /media/fanning/fd5e004e-88b8-4a7c-8d00-63d6c2c19b03/boot

git clone https://github.com/stulluk/FFmpeg-Cedrus.git
git clone https://github.com/uboborov/ffmpeg_h264_H3.git
cp /root/ffmpeg_h264_H3/cedrus264.c /root/FFmpeg-Cedrus/libavcodec/cedrus264.c
cp -R /root/ffmpeg_h264_H3/sunxi /root/FFmpeg-Cedrus/libavcodec/arm
#apt-get install libpulse-dev libv4l-dev libmp3lame-dev libx264-dev
apt-get install libx264-dev x264 yasm libmp3lame-dev libpulse-dev libv4l-dev libasound2-dev libvdpau-dev
cd FFmpeg-Cedrus
#./configure --prefix=/usr --enable-nonfree --enable-gpl --enable-version3 --enable-vdpau --enable-libx264 --enable-libmp3lame --enable-libpulse --enable-libv4l2 
./configure --prefix=/usr --enable-nonfree --enable-gpl --enable-version3 --enable-vdpau --enable-libx264 --enable-libmp3lame --enable-libpulse --enable-indev=alsa --enable-outdev=alsa --enable-libv4l2 --disable-shared --enable-static
make -j 4 && make install
ffmpeg -version
ffmpeg -h encoder=cedrus264

ffmpeg -f alsa -i plughw:2,0 -t 30 out.wav	//ok
sudo ffmpeg -t 30 -f v4l2 -channel 0 -video_size 640x480 -i /dev/video0 -pix_fmt nv12 -r 30 -b:v 64k -c:v cedrus264 480p.mp4	//ok
sudo ffmpeg -t 30 -f v4l2 -channel 0 -video_size 1280x720 -i /dev/video0 -pix_fmt nv12 -r 30 -b:v 64k -c:v cedrus264 720p.mp4
sudo ffmpeg -t 30 -f v4l2 -channel 0 -video_size 1920x1080 -i /dev/video0 -pix_fmt nv12 -r 30 -b:v 64K -c:v cedrus264 1080p.mp4


sudo ffmpeg -fflags +igndts -f v4l2 -input_format mjpeg -s 1280x720 -i /dev/video0 -pix_fmt nv12 -c:v cedrus264 output.h264


ffmpeg -f v4l2 -channel 0 -s 640x480 -i /dev/video0 -f alsa -ar 22050 -i hw:0,0 -r 25 -framerate 25 -pix_fmt nv12 -c:v cedrus264 -b:v 270k -c:a mp3 -b:a 64k destination.avi


sudo ffmpeg -f v4l2 -input_format mjpeg -video_size 1280x720 -i /dev/video0 -pix_fmt nv12 -c:v cedrus264 1080p.mp4

crossbuild qt5

https://wiki.qt.io/RaspberryPi2EGLFS

sudo apt-get install libudev-dev libinput-dev libts-dev libxcb-xinerama0-dev libxcb-xinerama0 libx11-dev

./configure -release -opengl es2 -skip webengine -skip webglplugin -skip websockets -skip script -skip qtwebchannel -skip webview -skip wayland -device linux-rasp-pi3-g++ -device-option CROSS_COMPILE=~/raspi/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian/bin/arm-linux-gnueabihf- -sysroot ~/raspi/sysroot -opensource -confirm-license -no-pch -nomake examples -nomake tests -no-xcb -make libs -prefix /usr/local/qt5pi -extprefix ~/raspi/qt5pi -hostprefix ~/raspi/qt5 -no-use-gold-linker -v

./configure -release -opengl es2 -skip script -skip wayland -device linux-rasp-pi3-g++ -device-option CROSS_COMPILE=~/raspi/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian/bin/arm-linux-gnueabihf- -sysroot ~/raspi/sysroot -opensource -confirm-license -no-pch -nomake examples -nomake tests -no-xcb -make libs -prefix /usr/local/qt5pi -extprefix ~/raspi/qt5pi -hostprefix ~/raspi/qt5 -no-use-gold-linker -v


gpio v3s


(position of letter in alphabet - 1) * 32 + pin number

sudo groupadd gpio
sudo usermod -aG gpio <myusername>
su <myusername>
sudo chgrp gpio /sys/class/gpio/export
sudo chgrp gpio /sys/class/gpio/unexport
sudo chmod 775 /sys/class/gpio/export
sudo chmod 775 /sys/class/gpio/unexport

This gives your user the ability to export and un-export.

Once you export the pins you can chgrp and chmod them as well (don't forget their contents) and use them as usual.

Code: Select all

echo "18" > /sys/class/gpio/export
chgrp -HR /sys/class/gpio/gpio18
chmod -R 775 /sys/class/gpio/gpio18


setup ubuntu18 host new

sudo apt-get install gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat libsdl1.2-dev xterm


dbus 
sudo -u ""nbv2"" bash
dbus-launch /home/nbv2/client


debug camera v3s

compiler

make ARCH=arm CROSS_COMPILE=/home/fanning/v3s/v3ssdk_new/tools/external-toolchain/bin/arm-linux-gnueabi- -j8

make ARCH=arm CROSS_COMPILE=/home/fanning/v3s/v3ssdk_new/tools/external-toolchain/bin/arm-linux-gnueabi- menuconfig

make ARCH=arm CROSS_COMPILE=/home/fanning/v3s/v3ssdk_new/tools/external-toolchain/bin/arm-linux-gnueabi- modules_install INSTALL_MOD_PATH=module_ftel


make ARCH=arm CROSS_COMPILE=/home/fanning/v3s/kernel_edit_from_camdroi/compiler/bin/arm-linux-gnueabihf- menuconfig


make ARCH=arm CROSS_COMPILE=/home/fanning/v3s/kernel_edit_from_camdroi/compiler/bin/arm-linux-gnueabihf- -j8

testing cmd

fswebcam -S 1 -d /dev/video1 -p UYVY -r 800x600 ./test.jpg

setting static ip for raspi

auto eth0
iface eth0 inet static
        address 192.168.1.155
        netmask 255.255.255.0
        gateway 192.168.1.1


allow-hotplug wlan0
iface wlan0 inet dhcp
wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf


link rtmp

http://qcsdn.com/q/sq.html?search=HI3518+RTMP



https://licheezero.readthedocs.io/zh/latest/%E8%B4%A1%E7%8C%AE/article%202.html





Modify dts configuration to add spi flash node

vi arch/arm/boot/dts/sun8i-v3s-licheepi-zero.dts

Add spi node configuration:

&spi0 {
        status ="okay";

        mx25l25635e:mx25l25635e@0 {
                compatible = "jedec,spi-nor";
                reg = <0x0>;
                spi-max-frequency = <50000000>;
                #address-cells = <1>;
                #size-cells = <1>;
        };

};


install node

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get update && sudo apt-get install yarn



golang build


wget https://dl.google.com/go/go1.15.2.linux-amd64.tar.gz


sudo apt-get install lib32z1

GOOS=linux go build -trimpath -ldflags="-s -w" -o FUCK

GOOS=linux GOARCH=arm GOARM=5 go build -trimpath -ldflags="-s -w"

nen file elf

upx -9 FUCK


go mod init github.com/PacktPublishing/Go-Programming-Cookbook-Second-Edition/chapter1/interfaces


/opt/hisi-linux/x86-arm/arm-hisiv300-linux/bin/arm-hisiv300-linux-uclibcgnueabi-ar





sudo ngrep -W byline -d any port 8080




Link linux kernel

https://www.programmersought.com/article/89133075009/
https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18841683/Linux+Reserved+Memory#LinuxReservedMemory-Petalinuxexample

sudo bash -c "echo default-on > /sys/devices/platform/leds/leds/orangepi\:red\:status/trigger"











start_byte	len_data	data			checksum (end byte)	

0xEF		4		0x30 0x31 0x32 0x33	0x45	



sudo timedatectl set-timezone Asia/Bangkok





BDB_SUPPORT_FIND_AND_BIND_INITIATOR=1



# Crossbuild openssl openssl-OpenSSL_1_0_2q

./Configure linux-mips32 -fPIC no-asm -shared --prefix=/var/tmp/midware --cross-compile-prefix=/home/fanning/workspace/fpt/INF/crossbuild_inf/msdk-4.8.5-mips/bin/mips-linux-


./Configure linux-generic64 enable-ssl3-method -fPIC no-asm -shared --prefix=/var/tmp/midware


# Crossbuild openssl openssl-OpenSSL_1_0_2k

./Configure linux-mips32 -fPIC no-asm -shared --prefix=/var/tmp/midware --cross-compile-prefix=/home/fanning/workspace/fpt/crossbuild_inf/msdk-4.8.5-mips/bin/mips-linux-


./Configure linux-generic64 enable-ssl3-method -fPIC no-asm -shared --prefix=/var/tmp/midware


# compile opus
./configure --target=arm-linux --host=arm-linux --prefix=/var/tmp/midware CC=/opt/hisi-linux/x86-arm/arm-hisiv300-linux/bin/arm-hisiv300-linux-uclibcgnueabi-gcc

./configure --target=arm-linux --host=arm-linux CC/opt/hisi-linux/x86-arm/arm-hisiv300-linux/bin/arm-hisiv300-linux-uclibcgnueabi-gcc

paho_c_pub -h hieunv15.ddns.net -t "test" -m "hello again1" -p 8883 --cafile ca.crt

mosquitto_pub -h hieunv15.ddns.net -t test -m "hello again1" -p 8883 --cafile ca.crt

make -j4

# Crossbuild openssl

# Crossbuild paho_c_mqtt

make CC=/home/fanning/workspace/fpt/INF/msdk-4.8.5-mips/bin/mips-linux-gcc CXX=/home/fanning/workspace/fpt/INF/msdk-4.8.5-mips/bin/mips-linux-g++ AR=/home/fanning/workspace/fpt/INF/msdk-4.8.5-mips/bin/mips-linux-ar LD=/home/fanning/workspace/fpt/INF/msdk-4.8.5-mips/bin/mips-linux-/mips-linux-ld

# Crossbuild paho_c_mqtt

# Crossbuild mosquitto_mqtt

make CC=/opt/gcc-linaro-6.3.1-2017.05-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc CXX=/opt/gcc-linaro-6.3.1-2017.05-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-g++ AR=/opt/gcc-linaro-6.3.1-2017.05-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-ar LD=/opt/gcc-linaro-6.3.1-2017.05-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-ld

# Crossbuild mosquitto_mqtt


#edit Makefile
#line 129 for paho mqtt
CFLAGS += -I./../openssl/out/include
LDFLAGS += -L./../openssl/out/lib


//convert audio
https://convertio.co/vn/

https://wavefilegem.com/how_wave_files_work.html


sudo add-apt-repository "deb http://archive.canonical.com/ubuntu $(lsb_release -sc) partner"

sudo apt update #not needed for Ubuntu 18.04 and newer

install opera compare with webrtc

wget https://download3.operacdn.com/pub/opera/desktop/60.0.3255.27/linux/opera-stable_60.0.3255.27_amd64.deb
sudo apt-get install apt-transport-https
sudo dpkg -i opera-stable_60.0.3255.27_amd64.deb


2. Install Adobe Flash Player.

sudo apt install adobe-flashplugin


wav to raw pcm

ffmpeg -i input.wav -ac 1 -ar 48000 -f s16le -acodec pcm_s16le output.raw
raw pcm to wav

ffmpeg -ac 1 -ar 48000 -f s16le -acodec pcm_s16le -i input.raw output.wav

aplay -D plughw:2,0 ./denvau163

For Raspbian Jessie, run sudo nano /etc/asound.conf and put the following in the file and save:
Download: file
Copy Code

    pcm.!default  {
     type hw card 1
    }
    ctl.!default {
     type hw card 1
    }

This will make the default PCM (audio) output card #1 and the default control also card #1

https://www.alsa-project.org/main/index.php/Asoundrc

ffplay -nodisp ./stayhigh.mp3

ffplay -nodisp http://203.162.123.181:21585/vov/tracks-a1/mono.m3u8

http://hackerpublicradio.org/eps.php?id=3014

http://hackerpublicradio.org/local/hpr3014.mp3




