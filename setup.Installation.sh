#!/bin/bash
#atualizar
apt update

#clear
clear

#banner
apt install flglet
flglet -f slant "[37;32mFelix the cat[0m"

#upgrade
apt upgrade
apt full-upgrade
#instalar sudo & nano
apt install sudo nano adduser -y

#sucesso
echo 2-3 terminada


#sleep
sleep 3


#clear
clear

# Perguntar ao usuário qual nome de usuário ele quer
echo "Digite o nome de usuário:"
read username

# Perguntar ao usuário qual senha ele quer
echo "Digite a senha:"
read -s password

# Criar o usuário com o nome e senha fornecidos
adduser --disabled-password --gecos "" "$username"
echo "$username:$password" | chpasswd

# Adicionar as linhas ao arquivo /etc/sudoers
echo "$username    ALL=(ALL:ALL) ALL" >> /etc/sudoers

#fechar
exit
exit
