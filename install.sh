#!/bin/bash
vermelho="\e[31m"
verde="\e[32m"
amarelo="\e[33m"
azul="\e[34m"
roxo="\e[38;2;128;0;128m"
reset="\e[0m"

rm -rf /root/checkusers/
rm -f /usr/local/bin/iniciar
sudo kill -9 $(lsof -t -i:5454)
pkill -9 -f "/root/checkusers/checkusers.py"


apt update && apt upgrade -y && apt install python3 git -y
git clone https://github.com/Cyber-ssh/checkusers.git
chmod +x /root/checkusers/checkusersMenu.sh
ln -s /root/checkusers/checkusersMenu.sh /usr/local/bin/iniciar

clear
echo -e "Para iniciar o menu digite: ${amarelo}iniciar${reset}"
