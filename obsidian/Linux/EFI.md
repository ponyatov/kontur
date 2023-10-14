# EFI
## Extensible Firmware Interface

- https://superuser.com/questions/634805/how-to-make-bootable-debian-usb-drive-that-works-on-both-bios-and-uefi-systems
- https://help.ubuntu.ru/wiki/ubuntu_%D0%BD%D0%B0_usb

## UEFI Shell

- https://www.bootdev.ru/2018/11/EFI-Shell-Bootable-Flash-drive.html
- https://www.bootdev.ru/2018/11/EFI-Shell-Installation.html

## EFI system partition

https://en.wikipedia.org/wiki/EFI_system_partition

## BIOS boot partition

https://en.wikipedia.org/wiki/BIOS_boot_partition

## [[debiabox]] partition (USB)

|||
|-|-|-|-|-
sdc1 | 100M | 1c | hidden FAT32 LBA|boot
sdc2 | 100M | ef | EFI FAT32 | efi
sdc3 | 2G | 83 | Linux ext2 | debian
sdc4 | max | 0c | FAT32 LBA | media

- [[dosfstools]]
- [[e2fsprogs]]
- [[gdisk]]
- [[syslinux]]

`noatime,nodiratime,relatime`

```shell
sudo /sbin/mkfs.vfat -n BOOT -F 32 /dev/sdc1
sudo /sbin/mkfs.vfat -n EFI -F 32 /dev/sdc2
sudo /sbin/mkfs.ext2 -L debian /dev/sdc3
sudo /sbin/mkfs.vfat -n media -F 32 /dev/sdc4
```


[[ПП РФ 878]]