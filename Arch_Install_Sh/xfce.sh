sudo pacman -S virtualbox-guest-utils networkmanager network-manager-applet xorg-xinit xorg-twm xterm alsa-utils &&
sudo systemctl enable vboxservice &&
sudo systemctl enable NetworkManager &&
sudo pacman -S xfce4 xfce4-goodies lxdm &&
sudo nano /etc/lxdm/lxdm.conf &&
sudo systemctl enable lxdm.service