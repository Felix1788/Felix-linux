#!/bin/bash

#clear
clear

#banner
echo -e "[31m█▀█ ▄▀█ █▀█ █▀▄ █░█ █▀"
echo -e "[32m█▀▀ █▀█ █▀▄ █▄▀ █▄█ ▄█"
echo -e "[31m█▀█ █▀ █"
echo -e "[32m█▄█ ▄█ ▄"
echo -e "[34mMade by Felix the cat Font"

#mensagem de boas vindas
echo -e "[32mBEM-VINDO (A) [31m A INSTALAÇÃO [34mDO PARDUS"

#Mengagem de espera
sleep 5 # esperar # 5 segundos

#instalação
apt update -y
pkg update -y
pkg upgrade -y
pkg full-upgrade -y
apt install proot-distro -y
proot-distro install pardus

#concluído
echo -e "[31mInstalação terminada"

#login
pd login pardus
