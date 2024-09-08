#!/bin/bash
#atualizar
apt update

#clear
clear

#banner
echo -e "[31m█▀█ ▄▀█ █▀█ █▀▄ █░█ █▀"
echo -e "[32m█▀▀ █▀█ █▀▄ █▄▀ █▄█ ▄█"
echo -e "[31m█▀█ █▀ █"
echo -e "[32m█▄█ ▄█ ▄"
echo -e "[34mMade by Felix the cat Font"

#sleep
sleep 1

#banner
echo -e "$(tput setaf 2)BEM VINDO A INSTALAÇÃO DO PARDUS 21 - 23$(tput sgr0)"
sleep 1
echo -e "$(tput setaf 2) Começando a instalação...$(tput sgr0)"
sleep 2

#upgrade
apt upgrade
apt full-upgrade
#instalar sudo & nano
apt install sudo nano adduser -y

#clear
clear



#sucesso
echo -e "\e[33m1-2 terminada\e[0m"


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

#clear
clear


echo -e "\e[33m2-2 terminada\e[0m"


#fechar
exit
exit
