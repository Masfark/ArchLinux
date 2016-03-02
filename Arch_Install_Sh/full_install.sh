#!/bin/bash
#full_install.sh

setfont ruscii_8x16.psfu &&
fdisk /dev/sda &&
mkfs.ext2 /dev/sda1 &&
mkfs.ext4 /dev/sda2 &&
mkfs.ext4 /dev/sda4 &&
mkswap /dev/sda3 &&

mount /dev/sda2 /mnt &&
mkdir /mnt/boot &&
mkdir /mnt/home &&
mount /dev/sda1 /mnt/boot &&
mount /dev/sda4 /mnt/home &&
swapon /dev/sda3 &&

nano /etc/pacman.d/mirrorlist &&

pacstrap /mnt base base-devel &&
genfstab -p /mnt >> /mnt/etc/fstab &&
arch-chroot /mnt ;

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
pacman -S virtualbox-guest-utils xfce4 xfce4-goodies lxdm networkmanager network-manager-applet xorg-xinit xorg-twm xterm alsa-utils gvfs gvfs-afc gvfs-smb gvfs-gphoto2 gvfs-mtp gvfs-goa gvfs-nfs gvfs-google rhythmbox ttf-ubuntu-font-family numix-themes yaourt rsync gedit geany firefox ffmpeg flashplugin libvdpau mono xdg-user-dirs vlc gimp &&

cd /home/masfark &&
git clone https://github.com/masfark/archlinux &&

nano /etc/lxdm/lxdm.conf &&
systemctl enable vboxservice &&
systemctl enable NetworkManager &&
systemctl enable lxdm.service &&

xdg-user-dirs-update &&
sh ~/archlinux/Arch_Install_Sh/theme.sh &&

cat ~/archlinux/done.txt
