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

hd_raw=$(df -h /dev/mapper/data-root) 

echo $hd_raw


#ram

#snap da temperature.
