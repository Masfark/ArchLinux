#!/bin/bash
cp ~/archlinux/.gtkrc-2.0 ~/ &&
cp -r ~/archlinux/icons/* /usr/share/icons/ &&
cp -r ~/archlinux/walls ~/Pictures/ &&
tar -vxf ~/archlinux/xfce4.tar.gz -C ~/.config/
