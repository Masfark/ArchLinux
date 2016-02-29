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
arch-chroot /mnt &&