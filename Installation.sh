#!/bin/bash

#Mengagem de boa vindas
echo BEM-VINDO A INSTALAÇÃO DO PARDUS

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
echo Instalação terminada.
#login
pd login pardus
