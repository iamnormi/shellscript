#!/bin/sh

#custom time format
#%a %d %b, %I:%M %p

#remove unwanted tools

sudo apt purge pidgin gnome-software xfce4-notes gnome-menus gnome-mines gnome-sudoku parole ristretto gimp gnome-themes-extra gnome-font-viewer sgt* thunderbird firefox transmission-* snapd gnome-themes-extra ; sudo apt autoremove


### install required tools ###

sudo apt install font-manger rofi axel git mpv ffmpeg python3-pip gnome-disk-utility ncdu virtualbox virtualbox-ext-pack virtualbox-guest-additions-iso elinks w3m lynx

#install fonts
sudo apt install ifonts-dejavu fonts-firacode fonts-cantarell

#install yt-dlp , youtube-dl
sudo apt purge youtube-dl ; pip3 install yt-dlp youtube-dl
sudo apt autoremove

#install oh-my-zsh
#https://ohmyz.sh/
sudo apt install zsh curl ; sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 

#librewolf
#https://deb.librewolf.net
#Ubuntu 20.04 #https://deb.librewolf.net/pool/focal/main/libr/librewolf/
#sudo gpkg -i *.deb


#Telegram
#https://desktop.telegram.org/
#tar -xvf *.tar.xz ; mkdir -pv ~/.telegram ; cp -vrf Telegram/* ~/.telegram




###theming###

#gtk theme 'dracula'
cd /usr/share/themes ; pwd ;sudo axel https://github.com/dracula/gtk/releases/download/v3.0/Dracula.tar.xz ; sudo tar -xvf Dracula.tar.xz ; sudo rm -v *.tar.xz ; cd

#icons 'dracula-icons' & #cursor theme 'dracula-cursors'
cd /usr/share/icons ; pwd ; sudo axel https://github.com/dracula/gtk/releases/download/v3.0/Dracula-cursors.tar.xz ; sudo git clone https://github.com/m4thewz/dracula-icons ; sudo rm -vrf dracula-icons/.git ; sudo rm -v dracula-icons/Preview.png ; sudo tar -vxf Dracula-cursors.tar.xz ; rm -v *.tar.xz ; cd

#xfce4-terminal "Dracula"
cd ; git clone https://github.com/dracula/xfce4-terminal.git ; mkdir -pv ~/.local/share/xfce4/terminal/colorschemes ; cd xfce4-terminal ; cp -vrf Dracula.theme ~/.local/share/xfce4/terminal/colorschemes ; cd ; rm -vrf xfce4-terminal ; cd

#rofi 'dracula'
cd ; git clone https://github.com/dracula/rofi ; mkdir ~/.config/rofi ; cp -vrf rofi/theme/config1.rasi ~/.config/rofi/config.rasi ; cd ; rm -vrf rofi ; cd


#mousepad 'dracula'
cd ; git clone https://github.com/dracula/mousepad.git && cd mousepad ; mkdir -pv "$HOME/.local/share/gtksourceview-3.0/styles" ; cp dracula.xml $HOME/.local/share/gtksourceview-3.0/styles ; cd ; rm -vrf mousepad ; cd

#librewolf extensions 
echo "Installing Dracula theme for librewolf..."
librewolf https://addons.mozilla.org/en-US/firefox/addon/dracula-dark-colorscheme/

echo "Install dark viewer add-on in librewolf..."
librewolf https://addons.mozilla.org/en-US/firefox/addon/darkreader/


