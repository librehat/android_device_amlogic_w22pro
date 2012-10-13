#!/sbin/sh

#/sbin/busybox fdisk /dev/block/avnftl7 < /etc/fdisk.media.cmd
/sbin/busybox fdisk /dev/block/avnftl* < /etc/fdisk.media.cmd
