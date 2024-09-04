#!/bin/sh

#install required packages
qemu-full virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat

#start the services
sudo systemctl enable libvirtd
sudo systemctl start libvirtd

#edit this file
#/etc/libvirt/libvirtd.conf
#unix_sock_group = "libvirt"
#unix_sock_ro_perms = "0777"
#unix_sock_rw_perms = "0770"

#add "libvirt" user to current user "username"
sudo usermod -aG libvirt i437k

#drivers for Windows VM
#https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/archive-virtio/virtio-win-0.1.215-2/