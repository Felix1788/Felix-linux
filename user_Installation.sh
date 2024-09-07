#!bin/bash
sudo apt install udisks2 -y
sudo rm -rf /var/lib/dpkg/info/udisks2.postinst
echo "" >> /var/lib/dpkg/info/udisks2.postinst
sudo apt-mark hold udisks2
sudo apt install pardus-xfce-desktop -y
sudo dpkg --configure -a
sudo apt -f install ; sudo apt install -f
sudo apt install tigervnc-standalone-server -y
clear
vncserver
vncserver -kill :1
clear
echo -e "[31m█░█ █▀▀ █░ █░ █▀█ █[0m"
echo -e "[32m█▀█ ██▄ █▄ █▄ █▄█ ▄[0m"
echo -e "[34mMade by Felix the cat Font[0m"
tput cursor off
echo -n "AGUARDE."
sleep 1
echo -n "."
sleep 1
echo -n "."
sleep 1
echo -n "."
tput cursor on
clear

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

#softwares
sudo apt install chromium -y
sed -i 'choromium --no-sandbox' /usr/share/applications/chromium.desktop

sudo apt install curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser -y

sed -i 'brave-browser --no-sandbox' /usr/share/applications/brave-browser.desktop

# instalar o mega pra descompactar os temas do mac
sudo apt install megatools -y
megadl https://mega.nz/file/xBhWjCbK#y8Mif8t5F7-QAZTmIKsCO0jswpKCxonNVLIq6PbXbl4
unxz candy-icons.tar.xz
tar -xvf candy-icons.tar
sudo mv candy-icons /usr/share/icons/

megadl https://mega.nz/file/8cYzgbbK#sOKQzdojEgjxsLCe2LlSxRSvyO842bcF-cbkiImEP_8
unxz WhiteSur-Dark.tar.xz
tar -xvf WhiteSur-Dark.tar
sudo mv WhiteSur-Dark /usr/share/icons/
echo "[Settings]" >> ~/.config/gtk-3.0/settings.ini
echo "" >> ~/.config/gtk-3.0/settings.ini
echo "gtk-theme-name = WhiteSur-Dark" >> ~/.config/gtk-3.0/settings.ini
echo "gtk-icon-theme-name = candy-icons" >> ~/.config/gtk-3.0/settings.ini

# Configurar temas GTK automaticamente
THEME_DIR=~/.config/gtk-3.0/
mkdir -p $THEME_DIR

echo "[Settings]" > $THEME_DIR/settings.ini
echo "gtk-theme-name = WhiteSur-Dark" >> $THEME_DIR/settings.ini
echo "gtk-icon-theme-name = candy-icons" >> $THEME_DIR/settings.ini

# Aplicar temas para todas as sessões (opcional)
echo "gtk-theme-name=WhiteSur-Dark" | sudo tee -a /etc/gtk-3.0/settings.ini
echo "gtk-icon-theme-name=candy-icons" | sudo tee -a /etc/gtk-3.0/settings.ini

sudo apt install plank -y

echo -e "[31m█▀█ ▄▀█ █▀█ █▀▄ █░█ █▀[0m"
echo -e "[32m█▀▀ █▀█ █▀▄ █▄▀ █▄█ ▄█[0m"
echo -e "[31m█▀█ █▀ █[0m"
echo -e "[32m█▄█ ▄█ ▄[0m"
echo -e "[34mMade by Felix the cat Font[0m"

sleep 1
echo -e 
