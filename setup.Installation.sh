#!/bin/bash
#atualizar
apt update
#upgrade
apt upgrade
apt full-upgrade
#instalar sudo & nano
apt install sudo nano adduser -y

# Perguntar ao usuário qual nome de usuário ele quer
echo "Digite o nome de usuário:"
read username

# Perguntar ao usuário qual senha ele quer
echo "Digite a senha:"
read -s password

# Criar o usuário com o nome e senha fornecidos
adduser --disabled-password --gecos "" "$username"
echo "$username:$password" | chpasswd

