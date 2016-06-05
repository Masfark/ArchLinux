pacman -S virtualbox-guest-utils plasma plasma-meta sddm networkmanager network-manager-applet xorg-xinit xorg-twm xterm alsa-utils gvfs gvfs-afc gvfs-smb gvfs-gphoto2 gvfs-mtp gvfs-goa gvfs-nfs gvfs-google rhythmbox ttf-ubuntu-font-family numix-themes yaourt rsync gedit geany firefox ffmpeg flashplugin libvdpau mono xdg-user-dirs vlc gimp &&

nano /etc/sddm.conf &&
systemctl enable vboxservice &&
systemctl enable NetworkManager &&
systemctl enable sddm.service &&
systemctl start sddm &&

xdg-user-dirs-update &&

cat /archlinux/done.txt
