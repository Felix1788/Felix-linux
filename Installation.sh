#!/bin/bash

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
apt update
pkg update
pkg upgrade
pkg full-upgrade
apt install proot-distro
proot-distro install pardus

#concluído
echo -e "[31mInstalação terminada"

#login
pd login pardus
