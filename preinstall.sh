loadkeys it
ls /sys/firmware/efi/efivars
ip link
dhcpcd
ping www.google.com
iwctl device list
iwctl station interface scan
iwctl station interface get-networks
iwctl station interface connect SSID
fdisk -l
cfdisk /dev/ # partizione (sda?)
mkfs.vfat -F32 /dev/sda1 
mkfs.ext4 /dev/sda3
mkswap /dev/sda2
mount /dev/sda3 /mnt
mkdir -p /mnt/boot/efi
mount /dev/sda1 /mnt/boot/efi
swapon /dev/sda2
reflector --verbose --country Italy --sort rate --save /etc/pacman.d/mirrorlist
cat /etc/pacman.d/mirrorlist
pacstrap /mnt base base-devel linux linux-firmware nano
genfstab -U -p /mnt > /mnt/etc/fstab
arch-chroot /mnt /bin/bash