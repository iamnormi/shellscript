#!/bin/bash
#Install Alacritty in ubuntu:
#sudo add-apt-repository ppa:aslatter/ppa
#sudo apt update
#sudo apt install alacritty

#custom time format
#%a %d %b, %I:%M %p

#Install librewolf:
#http://deb.librewolf.net
#Debloat:
sudo apt purge firefox pidgin thunderbird gnome-software transmission-* parole gnome-font-viewer gnome-sudoku gnome-mines sgt-* snapd
sud apt autoremove -y
#Initial install
sudo apt install git mpv ffmpeg axel elinks python3-pip conky plank font-manager fonts-dejavu fonts-firacode fonts-cantarell fonts-monofur fonts-hack* -y 
sudo apt purge youtube-dl
sudo apt autoremove -y
sudo pip3 install youtube-dl yt-dlp 

