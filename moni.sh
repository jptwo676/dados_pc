#!/usr/bin/env bash
#-------------------------------------------------------------
#Script  : moni.sh
#About   : 
#Version : 0.1
#Author  : jptwo676 <twobakabaka656@gmail.com>
#Date    : 11/01/2024
#Licence : GNU/GPL v3.0
#--------------------------------------------------------------
#Use: Give basic info about the computer.
#--------------------------------------------------------------



system_lang=$( locale | grep 'LANG=' | awk -F '=' '{print $2}' )

if [ system_lang=pt_BR.UTF-8 ]; then
    nome_model_cpu="Nome do modelo:"
    echo -e "\e[1;34m Info da CPU: \e[0m"
    nome_cpu_full=$( lscpu | grep "$nome_model_cpu" | awk -F ':' '{print $2}' )
    echo $nome_cpu_full
else
    echo "Your computer language is not supported."
fi

echo

#dados tempo do boot
tempo_ex=$( uptime -p )
echo -e "\e[1;34m Tempo de atividade: \e[0m"
echo $tempo_ex

echo

#cpu name

echo $nome_cpu_full

echo

#hd space
echo -e "\e[1;34m Dados sobre o uso de HD: \e[0m"
hd=$( df -h /dev/mapper/data-root )
echo -e "$hd"

echo

#ram
primeira_linha_ram=$( free -h | head -n 1 )
segunda_linha_ram=$( free -h | tail -n 2 )
echo -e "\e[1;34m Dados sobre a RAM: \e[0m"
echo -e "\e[1;34m $primeira_linha_ram \e[0m"
echo -e "$segunda_linha_ram"


#snap da temperatura.
