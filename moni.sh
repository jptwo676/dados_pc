#!/usr/bin/env bash
#-------------------------------------------------------------
#Script  : moni.sh
#About   : 
#Version : 0.1
#Author  : jptwo676 <twobakabaka656@gmail.com>
#Date    : 11/01/2024
#Licence : GNU/GPL v3.0
#--------------------------------------------------------------
#Use: Give basic info about temperature.
#--------------------------------------------------------------

#hd space

echo Dados sobre o uso de HD:
primeira_linha_hd=$( df -h /dev/mapper/data-root | head -n 1 )
echo -e "\e[1;34m$primeira_linha_hd\e[0m"
segunda_linha_hd=$( df -h /dev/mapper/data-root | tail -n 1 )
echo -e "$segunda_linha_hd"


#ram
echo Dados sobre a RAM:
ram_h=$( free -h )
echo "$ram_h"
#snap da temperature.
