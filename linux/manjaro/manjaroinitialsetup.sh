#!/bin/sh

#Remove Unwanted
sudo pacman -Rs midori parole qpdfview 

#Update Sourcelist or Mirror-list
sudo pacman-mirrors -g

#SystemFullUpgrade
sudo pacman -Syu
#Install Required 
sudo pacman -Sy firefox libreoffice-fresh ncdu mpv yt-dlp zathura zathura-pdf-poppler gimp sxiv exa zsh curl xfce4-cpufreq-plugin xfce4-netload-plugin xfce4-systemload-plugin patch adobe-source-sans-fonts elinks gnome-disk-utility xclip  vim yay youtube-dl rofi alacritty

#install VirtualBox 
#Look manjaro wiki

#install bat
cd ~ ; bat_ver=$(curl -s "https://api.github.com/repos/tshakalekholoane/bat/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
cd ~ ; curl -Lo bat "https://github.com/tshakalekholoane/bat/releases/download/${bat_ver}/bat"
cd ~ ; sudo mv -v bat /usr/local/bin/
#setup
cd /usr/local/bin/ ; sudo chmod +x bat ;sudo ./bat -t 60 ; sudo ./bat -p

#install Telegram from https://github.com/telegramdesktop/tdesktop/releases/ 
#https://desktop.telegram.org/
cd ~
TG_VER=$(curl -s "https://api.github.com/repos/telegramdesktop/tdesktop/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')
curl -Lo tsetup.tar.xz "https://github.com/telegramdesktop/tdesktop/releases/download/v${TG_VER}/tsetup.${TG_VER}.tar.xz"
tar -xvf tsetup.tar.xz ; mkdir -pv ~/.telegram ; cp -vrf Telegram/* ~/.telegram ; cd ; rm -vrf tsetup.tar.xz ; rm -vrf Telegram ; cd
cd ~


#install xdm from https://github.com/subhra74/xdm/releases
cd ~
XDM_VER=$(curl -s "https://api.github.com/repos/subhra74/xdm/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
curl -Lo xdm.tar.xz "https://github.com/subhra74/xdm/releases/download/${XDM_VER}/xdm-setup-${XDM_VER}.tar.xz"
tar -xvf xdm.tar.xz ; sudo bash install.sh ; rm -v install.sh readme.txt xdm.tar.xz ; cd

#yay
yay -S nerd-fonts-jetbrains-mono

#install oh-my-zsh
#HTTps://ohmyz.sh/
sudo apt install zsh curl ; sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


