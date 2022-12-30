#!/bin/sh

#Speedup Pacman
sudo pacman -Sy reflector
sudo reflector -c "IN" -f 12 -l 10 -n 12 --save /etc/pacman.d/mirrorlist


#SystemFullUpgrade
sudo pacman -Syu

#Install Required 
#firefox kodi gimp pulsemixer axel 
sudo pacman -Sy libreoffice-fresh ncdu mpv zathura zathura-pdf-poppler pulseaudio-bluetooth bluez \
    sxiv exa zsh curl patch elinks  xclip vim fzf  neovim make fakeroot patch git \
    yt-dlp rofi unzip axel android-tools android-file-transfer tree  pkg-config blueman htop picom \
    virtualbox virtualbox-guest-iso virtualbox-host-modules-arch  pkg-config  zip xwallpaper aria2 \
    ffmpeg zsh-autosuggestions  lightdm lightdm-gtk-greeter-settings ncdu brightnessctl net-tools pamixer \
    make zsh-syntax-highlighting ttf-jetbrains-mono ttf-joypixels python3-pip libxft-bgra dunst


#install bat
cd ~ ; bat_ver=$(curl -s "https://api.github.com/repos/tshakalekholoane/bat/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
cd ~ ; curl -Lo bat.zip "https://github.com/tshakalekholoane/bat/releases/download/${bat_ver}/bat.zip"
cd ~ ; unzip bat.zip 
cd ~ ; sudo mv -v bat /usr/local/bin/ ; cd ~ ; rm -vrf bat.zip
#setup
cd /usr/local/bin/ ; sudo chmod +x bat ; sudo ./bat -t 60 ; sudo ./bat -p 60

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


#Setup Intel itGPU
sudo pacman -Syu xf86-video-intel vulkan-intel

#Create A config And Cofigure it Backup of Actual config Given below:

#file location: /etc/X11/xorg.conf.d/20-intel.conf
#      Section "Device"
#        Identifier  "Intel Graphics"
#        Driver      "intel"
#        Option      "DRI" "3"             # DRI3 is now default
#        Option      "AccelMethod"  "uxa"
#      EndSection

#Enabling Hardware video acceleration  (VA-API) vaapi

sudo pacman -Syu libva-intel-driver libva-vdpau-driver  libvdpau-va-gl intel-gpu-tools libva-utils intel-media-driver 

#Config vainfo
export LIBVA_DRIVER_NAME=iHD

#Config vdpauinfo
VDPAU_DRIVER=va_gl

#Enable Hardware Video Acceleration (VA-API) For Firefox
#https://ubuntuhandbook.org/index.php/2021/08/enable-hardware-video-acceleration-va-api-for-firefox-in-ubuntu-20-04-18-04-higher/



# pikaur: AUR helper
cd ~ ; git clone https://aur.archlinux.org/pikaur.git
cd ~ ; cd pikaur
makepkg -fsri
rm -vrf ~/pikaur


#pikaur
pikaur -S nerd-fonts-jetbrains-mono update-grub ytfzf cava brave-bin

#install oh-my-zsh
#HTTps://ohmyz.sh/
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"



# dwm: Window Manager
git clone --depth=1 https://github.com/iamvk1437k/dwm.git ~/.local/src/dwm
sudo make -C ~/.local/src/dwm install

# st: Terminal
git clone --depth=1 https://github.com/iamvk1437k/st.git ~/.local/src/st
sudo make -C ~/.local/src/st install

# dmenu: Program Menu
git clone --depth=1 https://github.com/iamvk1437k/dmenu.git ~/.local/src/dmenu
sudo make -C ~/.local/src/dmenu install

# dwmblocks: Status bar for dwm
git clone --depth=1 https://github.com/iamvk1437k/dwmblocks.git ~/.local/src/dwmblocks
sudo make -C ~/.local/src/dwmblocks install


#mousepad
sudo pacman -Syu mousepad

#Bye Bye Xfce4
sudo pacman -Rns xfce4 xfce4-goodies

