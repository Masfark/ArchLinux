pacman -S virtualbox-guest-utils plasma sddm networkmanager network-manager-applet xorg-xinit xorg-twm xterm alsa-utils gvfs gvfs-afc gvfs-smb gvfs-gphoto2 gvfs-mtp gvfs-goa gvfs-nfs gvfs-google rhythmbox ttf-ubuntu-font-family numix-themes yaourt rsync gedit geany firefox ffmpeg flashplugin libvdpau mono xdg-user-dirs vlc gimp &&

systemctl enable vboxservice &&
systemctl enable NetworkManager &&
systemctl enable sddm &&

xdg-user-dirs-update &&

cat /ArchLinux/done.txt
