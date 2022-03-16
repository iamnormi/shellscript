###theming###

#gtk theme 'dracula'
cd /usr/share/themes ; pwd ;sudo axel https://github.com/dracula/gtk/releases/download/v3.0/Dracula.tar.xz ; sudo tar -xvf Dracula.tar.xz ; sudo rm -v *.tar.xz ; cd

#icons 'dracula-icons' & #cursor theme 'dracula-cursors'
cd /usr/share/icons ; pwd ; sudo axel https://github.com/dracula/gtk/releases/download/v3.0/Dracula-cursors.tar.xz ; sudo git clone https://github.com/m4thewz/dracula-icons ; sudo rm -vrf dracula-icons/.git ; sudo rm -v dracula-icons/Preview.png ; sudo tar -vxf Dracula-cursors.tar.xz ; sudo rm -v *.tar.xz ; cd
sudo gtk-update-icon-cache /usr/share/icons/dracula-icons/
#xfce4-terminal "Dracula"
cd ; git clone https://github.com/dracula/xfce4-terminal.git ; mkdir -pv ~/.local/share/xfce4/terminal/colorschemes ; cd xfce4-terminal ; cp -vrf Dracula.theme ~/.local/share/xfce4/terminal/colorschemes ; cd ; rm -vrf xfce4-terminal ; cd

#rofi 'dracula'
cd ; git clone https://github.com/dracula/rofi ; mkdir ~/.config/rofi ; cp -vrf rofi/theme/config1.rasi ~/.config/rofi/config.rasi ; cd ; rm -vrf rofi ; cd


#mousepad 'dracula'
cd ; git clone https://github.com/dracula/mousepad.git && cd mousepad ; mkdir -pv "$HOME/.local/share/gtksourceview-3.0/styles" ; cp dracula.xml $HOME/.local/share/gtksourceview-3.0/styles ; cd ; rm -vrf mousepad ; cd

#wallpaper
cd /usr/share/backgrounds ; sudo axel https://github.com/dracula/wallpaper/raw/master/xubuntu.png ; cd 
