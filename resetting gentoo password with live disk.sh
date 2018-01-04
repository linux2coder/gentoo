# mount the appropriate partions
mount /dev/sda4 /mnt/gentoo
mount /dev/sda2 /mnt/gentoo/boot
mount -t proc none /mnt/gentoo/proc
mount -o bind /dev /mnt/gentoo/dev
chroot /mnt/gentoo /bin/bash
env-update
source /etc/profile
export PS1="(chroot) $PS1"
echo"enter 'passwd <username>'command and reset your password
