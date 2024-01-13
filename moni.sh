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

NOME_MODEL_CPU="Nome do modelo:"

#detectar a linguagem do sys (util pra procura de dados)

#dados tempo do boot
tempo_ex=$( uptime -p )
echo -e "\e[1;34mTempo de atividade: \e[0m"
echo $tempo_ex

echo

#cpu name
echo -e "\e[1;34mInfo da CPU: \e[0m"
nome_cpu_full=$( lscpu | awk -v pattern="$NOME_MODEL_CPU" '$0 ~ pattern {print}' ) #TODO arrumar esse awk
echo $nome_cpu_full

echo

#hd space
echo Dados sobre o uso de HD:
primeira_linha_hd=$( df -h /dev/mapper/data-root | head -n 1 )
segunda_linha_hd=$( df -h /dev/mapper/data-root | tail -n 1 )
echo -e "\e[1;34m$primeira_linha_hd\e[0m"
echo -e "$segunda_linha_hd"

echo

#ram
primeira_linha_ram=$( free -h | head -n 1 )
segunda_linha_ram=$( free -h | tail -n 2 )
echo Dados sobre a RAM:
echo -e "\e[1;34m$primeira_linha_ram\e[0m"
echo -e "$segunda_linha_ram"


#snap da temperatura.
