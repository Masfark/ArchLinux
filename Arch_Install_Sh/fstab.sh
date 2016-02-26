genfstab -p /mnt >> /mnt/etc/fstab &&
arch-chroot /mnt &&
echo masfark > /etc/hostname &&
ln -s /usr/share/zoneinfo/Europe/Moscow /etc/localtime &&
passwd