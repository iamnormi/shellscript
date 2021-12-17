#!/bin/bash
#Disable drive automount in thunar file manager
xfconf-query -c thunar-volman -p /automount-drives/enabled -s false # disable drive automount
xfconf-query -c thunar-volman -p /automount-media/enabled -s false # disable media automount
xfconf-query -c thunar-volman -p /autobrowse/enabled -s false # disable thunar popping up
