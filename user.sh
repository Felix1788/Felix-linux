#!bin/bash
sudo apt install udisks2 -y
sudo rm -rf /var/lib/dpkg/info/udisks2.postinst
echo "" >> /var/lib/dpkg/info/udisks2.postinst
sudo apt-mark hold udisks2
sudo apt install pardus-xfce-desktop -y
sudo apt install tigervnc-standalone-server -y
vncserver
vncserver -kill :1
mkdir -p ~/.vnc
echo "#!/bin/sh" >> ~/.vnc/xstartup
echo "" >> ~/.vnc/xstartup
echo "dbus-launch" >> ~/.vnc/xstartup
echo "startxfce4" >> ~/.vnc/xstartup
chmod +x .vnc/xstarup
vncserver




