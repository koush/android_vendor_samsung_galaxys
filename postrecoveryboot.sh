#!/sbin/sh
umount /system
umount /efs
rm /etc
mkdir -p /etc
mkdir -p /datadata
chmod 4777 /sbin/su
