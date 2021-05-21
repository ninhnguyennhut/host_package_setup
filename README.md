# host_package_setup
#!/bin/bash

#remove web user for test many time
sudo deluser --remove-home web



sudo useradd -m -d /home/web -s /bin/bash web

echo web:Xk4S/n | sudo chpasswd

sudo su - web -c "wget https://binhnt61.s3-ap-southeast-1.amazonaws.com/latest/node-v14.16.0-linux-armv7l.tar.gz"

sudo su - web -c "tar -zxvf node-v14.16.0-linux-armv7l.tar.gz"

sudo su - web -c 'echo  "PATH=/home/web/node-v14.16.0-linux-armv7l/bin:$PATH" >> /home/web/.bashrc'

sudo su - web -c "source /home/web/.bashrc"

sudo chown -R web:web /home/web/node-v14.16.0-linux-armv7l

sudo su - web








#!/bin/bash

#remove web user for test many time
sudo deluser --remove-home web



sudo useradd -m -d /home/web -s /bin/bash web

echo web:Xk4S/n | sudo chpasswd

sudo su - web -c "wget http://controller:8080/node-v14.16.0-linux-armv7l.tar.gz"

sudo su - web -c "tar -zxvf node-v14.16.0-linux-armv7l.tar.gz"

sudo su - web -c 'echo  "PATH=/home/web/node-v14.16.0-linux-armv7l/bin:$PATH" >> /home/web/.bashrc'

sudo su - web -c "source /home/web/.bashrc"

sudo chown -R web:web /home/web/node-v14.16.0-linux-armv7l

sudo su - web -c "sudo mkdir -p /home/web/fpt_gateway"

sudo su - web -c "svn co https://172.27.131.168:2103/svn/ipms_firmware/ --username=iot --password=ZwwN23"












nesthouse

mt7628
https://nh-firmwares.s3-ap-southeast-1.amazonaws.com/latest/audiomt7628.tar


DISTRO = "poky"
LINUX_KERNEL_TYPE = "tiny"

IMAGE_INSTALL_append += " \
    nodejs \
    nodejs-npm \
    ntp \
    ntp-tickadj \
    wpa-supplicant \
    cronie \
    dropbear \
    htop \
    sudo \
    wget \
"

#IMAGE_FSTYPES_append = " ext4"
EXTRA_IMAGE_FEATURES += "debug-tweaks "
INHERIT += "extrausers"
EXTRA_USERS_PARAMS  = "usermod -P 000 root; "
EXTRA_USERS_PARAMS += "useradd -P 000 epcb;"
EXTRA_USERS_PARAMS += "usermod -a -G sudo epcb;"





IPMS web


[Unit]
Description=IPMS Web Backend pop service
After=network.target
StartLimitIntervalSec=0
[Service]
Type=simple
Restart=always
RestartSec=10
User=device
ExecStart=/home/device/fpt_gateway/ipms_firmware/web/webbackend/start_webbackend.sh
WorkingDirectory=/home/device/fpt_gateway/ipms_firmware/web/webbackend

[Install]
WantedBy=multi-user.target



@start_webbackend.sh@

#!/bin/bash

source /home/device/.nvm/nvm.sh

npm start







sudo dd if=/dev/mmcblk1 | gzip > ./sd_card_web_backup.img.gz





#!/bin/bash

cd /opt/XMOS/xTIMEcomposer/Community_14.3.3
source SetEnv
JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-amd64"
PATH=${JAVA_HOME}/bin:$PATH
xtimecomposer







- Crosscompile các thư viện libopenssl, libmosquitto, libsqlite3, libcurl cho modem HMW97RG6M (Load 100%)
- Port ak linux source base ( đã chạy ổn định trên các bộ giám sát IPMS và OPMS ) sử dụng các thư viện đã crosscompile cho modem HMW97RG6M (Load 100%)
  + HMW97RG6M sử dụng linux kernel 2.6 nên phần timer trên ak linux source base cần chỉnh sửa cho phù hợp. (Load 100%)

- Test mqtt connect trên modem HMW97RG6M. (Load 100%)

- Đọc hiểu API và test lấy thông tin modem bằng tay. (Load 100%)
- Xây dựng cấu trúc dữ liệu cho các thông tin modem. (Load 100%)
- Thực hiện chức năng lấy các thông tin từ modem và cấu trúc thành chuổi json. (Load 40%, thông tin 5 command).

flashrom

sudo flashrom --programmer ch341a_spi --read test.bin -V

dd if=/dev/zero of=uboot.bin seek=4194303 count=1 bs=1


mt7620

baudrate=115200
bootcmd=sf probe ; sf read 0x84000000 0xa0000 0x200000 ; bootm 0x84000000
bootdelay=2
fdtcontroladdr=87e6e9c0
ipaddr=192.168.200.55
serverip=192.168.200.15
stderr=uartlite@10000c00
stdin=uartlite@10000c00
stdout=uartlite@10000c00


1347671239
1497411382
1176217268

21692 : 11:11 P

telnet 10.253.253.2
KTHT.HieuNV15: 42.113.142.194
admin11/admin11


config interface 'loopback'
        option ifname 'lo'
        option proto 'static'
        option ipaddr '127.0.0.1'
        option netmask '255.0.0.0'

config globals 'globals'
        option ula_prefix 'fd7b:32c1:f314::/48'

config interface 'lan'
        option ifname 'eth1'
        option proto 'static'
        option ipaddr '192.168.188.234'
        option netmask '255.255.255.0'
        option ip6assign '60'

config interface 'wan'
        option ifname 'eth0'
        option proto 'dhcp'






https://www.programmersought.com/article/8523231409/

Backup your OpenWRT config (only the config, not the whole system)

This will produce full configuration dump of the router's UCI.

0
ssh root@router "uci export" > router.conf
unixmonkey89391 · 2015-07-23 18:06:27 0
Backup your OpenWRT config (only the config, not the whole system)

Creates a full backup of router's /etc (and any other files or directories specified in /etc/sysupgrade.conf) that gets stored into the computer as a tarball named with full date and time (YYYY-MM-DD-HH:MM).

0
ssh root@router "sysupgrade -b -" > backup-router-$(date +%F-%R).tar.gz


export FORCE_UNSAFE_CONFIGURE=1

https://blog.csdn.net/s_s_c888/article/details/50983226?utm_medium=distribute.pc_relevant.none-task-blog-BlogCommendFromMachineLearnPai2-4.control&dist_request_id=1328603.9912.16149127080311445&depth_1-utm_source=distribute.pc_relevant.none-task-blog-BlogCommendFromMachineLearnPai2-4.control

[Unit]
Description=gateway_app_manager pop service
After=network.target
StartLimitIntervalSec=0l		
[Service]
Type=simple
Restart=always
RestartSec=2
User=root
ExecStart=/bin/bash -c '/bin/echo 0 > /sys/class/graphics/fbcon/cursor_blink'

[Install]
WantedBy=multi-user.target

xmos

9255-6DAA-4C4C-D63E-2F0F-3C6E-B19A-4ABB


package camera install

sudo apt-get install libacl1-dev
sudo apt-get install liblzo2-dev

sudo tar -cvjSf folder.tar.bz2 folder

sudo dtc -I dtb -O dts sun8i-h3-orangepi-plus2e.dtb > sun8i-h3-orangepi-plus2e.dts
sudo dtc -O dtb -o sun8i-h3-orangepi-plus2e.dtb -b 0 sun8i-h3-orangepi-plus2e.dts

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




@reboot /home/device/fpt_gateway/ipms_firmware/flash_emmc.sh &>> /home/device/fpt_gateway/ipms_firmware/flash_emmc.log


#!/bin/bash

screen sudo /usr/sbin/nand-sata-install




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


raspi
auto eth0
iface eth0 inet static
        address 192.168.1.111
        netmask 255.255.255.0
        gateway 192.168.1.1





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



golang build



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

https://www.plcnext-community.net/index.php?option=com_content&view=article&id=257:crosscompile-guide-mosquitto&catid=78&Itemid=366&lang=en

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







f1c200s

https://littlevgl.readthedocs.io/en/latest/Doc/03.F1C100S_Linux/F1C100S_Linux.html


























