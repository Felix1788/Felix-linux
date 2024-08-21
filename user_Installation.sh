#!bin/bash
sudo apt install udisks2 -y
sudo rm -rf /var/lib/dpkg/info/udisks2.postinst
echo "" >> /var/lib/dpkg/info/udisks2.postinst
sudo apt-mark hold udisks2
sudo apt install pardus-xfce-desktop -y
sudo apt install tigervnc-standalone-server -y
clear
vncserver
vncserver -kill :1
clear
echo AGUARDE.
sleep 1
clear
echo AGUARDE..
sleep 1
clear
echo AGUARDE...
sleep 1
clear
echo AGUARDE.
sleep 1
clear
mkdir -p ~/.vnc
mkdir -p ~/.vnc/xstartup
echo "#!/bin/sh" >> ~/.vnc/xstartup
echo "" >> ~/.vnc/xstartup
echo "dbus-launch" >> ~/.vnc/xstartup
echo "startxfce4" >> ~/.vnc/xstartup
cd ~/.vnc/
chmod +x *
cd
clear
vncserver :2
clear

# instalar o mega pra descompactar os temas do mac
sudo apt install megatools -y
megadl https://mega.nz/file/xBhWjCbK#y8Mif8t5F7-QAZTmIKsCO0jswpKCxonNVLIq6PbXbl4
unxz candy-icons.tar
tar -xvf candy-icons.tar
sudo mv candy-icons /usr/share/icons/

megadl https://mega.nz/file/8cYzgbbK#sOKQzdojEgjxsLCe2LlSxRSvyO842bcF-cbkiImEP_8
unxz WhiteSur-Dark.tar.xz
tar -xvf WhiteSur-Dark.tar
sudo mv WhiteSur-Dark /uar/share/icons/


