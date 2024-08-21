#!/bin/bash

#banner
echo " _______
|            |
|    FELIX   |
|   THE CAT  |
|            |
|____________|"
#Mengagem de boa vindas
echo -e "[32mBEM-VINDO 'A' [31m A INSTALAÇÃO [34mDO PARDUS[0m"
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
