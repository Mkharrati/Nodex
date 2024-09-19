#!/bin/bash
sudo cd
sudo rm Nodex.sh
sudo rm /usr/bin/Nodex
sudo wget https://github.com/Mkharrati/Nodex/raw/refs/heads/main/Nodex.sh
sudo mv Nodex.sh /usr/bin/Nodex
sudo chmod 777 /usr/bin/Nodex
clear
G='\033[0;32m'
NC='\033[0m'
echo "${G}Nodex Installed successfuly!${NC}"

