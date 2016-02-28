passwd &&
echo masfark-pc > /etc/hostname &&
ln -s /usr/share/zoneinfo/Europe/Moscow /etc/localtime &&
nano /etc/locale.gen &&
locale-gen &&
echo LANG=ru_RU.UTF-8 > /etc/locale.conf &&
echo FONT=ruscii_8x16.psfu > /etc/vconsole.conf &&
mkinitcpio -p linux &&
pacman -S grub os-prober &&
grub-install /dev/sda &&
grub-mkconfig -o /boot/grub/grub.cfg &&

useradd -m -g users -G wheel -s /bin/bash masfark &&
passwd masfark &&
EDITOR=nano visudo &&
nano /etc/pacman.conf &&

pacman -Syy
pacman -S virtualbox-guest-utils xfce4 xfce4-goodies lxdm networkmanager network-manager-applet xorg-xinit xorg-twm xterm alsa-utils gvfs gvfs-afc gvfs-smb gvfs-gphoto2 gvfs-mtp gvfs-goa gvfs-nfs gvfs-google rhythmbox ttf-ubuntu-font-family numix-themes yaourt rsync gedit geany firefox ffmpeg flashplugin libvdpau mono&&

nano /etc/lxdm/lxdm.conf &&
systemctl enable vboxservice &&
systemctl enable NetworkManager &&
systemctl enable lxdm.service &&

xdg-user-dirs &&
xdg-user-dirs-update &&

cat /archlinux/done.txt
