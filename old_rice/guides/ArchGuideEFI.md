---
title: Arch Install EFI
author: Amey Khairnar
date: \today
geometry: margin=1.5cm
fontsize: 10pt
linkcolor: blue
urlcolor: blue
---

\tableofcontents

\pagebreak


# Using Disk Destroyer to create a live USB
- Download ISO from [here](https://www.archlinux.org/download/)
- Plug in usb and check with `lsblk`. Should be `sdx`.
- Enter superuser by 

    ```
    # sudo su
    ```
- Create live using

    ```{sh}
    # dd if=$iso_location of=/dev/sdx status="progress"
    ```

# Boot into the USB
- Select boot menu on start and select the USB.
- Select the option to boot into live ISO

# Live ISO

## Setting up network
- Check your internet connection using `ifconfig` and `ping`. Example:

    ```
    # ping -c 3 google.com
    ```
- If you don't find connection, use 

    ```
    # wifi-config
    ```

## Disk Partitioning

### Check partitions
Check your partitions using anyof these:

`# cat /proc/partitions`

`# ls /dev/[s|x|v]d*`

`# lsblk`

`# fdisk -l`


### Paritions Sizes and Formats
- EFI System parition (`/dev/sda1`): `300 M` | `FAT32`.
- Swap partition (`/dev/sda2`): `2xRAM | RAM/2`.
- Root parition (`/dev/sda3`): At least `20 G` | `ext4`.

### Partitioning
Run
```{sh} 
# cfdisk /dev/sda
```
- EFI: `New` > `300M` > `Type` > `EFI System`
- Swap: `New` > `20G` > `Type` > `Linux sawp`
- Root: `New` > `900G` > `Type` > `Linux filesystem`

Then do: `Write` > `yes` > `Quit`

Check your partitions using `fdisk -l` or `lsblk`.

### Formating partitions
Run these to format newly created partitions

```{sh}
# mkfs.fat -F32 /dev/sda1
# mkswap /dev/sda2
# mkfs.ext4 /dev/sda3
```

Check your partitions using `fdisk -l` or `lsblk`.

## Installing Arch Linux

### Mounting root and EFI; Swap
```{sh}
# mount /dev/sda3 /mnt
# swapon /dev/sda2

# mkdir /mnt/boot/EFI
# mount /dev/sda1 /boot/EFI
```

### fstab file
Check fstab using:
```{sh}
# genfstab -U /mnt
```

See that all the grives are where they're are supposed to be, and then do
```{sh}
# genfstab -U /mnt >> /mnt/etc/fstab
```

### Pacman Config
- For more speed, change your mirrors  in `/etc/pacman.d/mirrorlist`
- Enable multilib by uncommenting parts in `/etc/pacman.conf`
  ```{conf}
  [multilib]
  Include = /etc/pacman.d/mirrorlist
  ```

### Install Arch Linux
Use `# pacstrap /mnt base base-devel vim dialog` to install Arch Linux on `root`. I put `vim` because i like it. You don't have to. `dialog` is for wifi-menu, but that's for later.

# Arch Linux System Configuration

To change root and add hostname, use
```{sh}
# arch-chroot /mnt
# echo "$hostname" > /etc/hostname
```

## Locale settings

### System Language
Uncomment in `/etc/locale.gen`:
```{conf}
en_US.UTF-8 UTF-8
en_US ISO-8859-1
```

Generate system language layout:
```{sh}
# locale-gen
# echo LANG=en_US,UTF-8 > /etc/locale.conf
# export LANG=en_US.UTF-8
```

### System Time
Check timezone using `# ls /usr/share/zoneinfo`

And use `# ln -s /usr/share/zoneinfo/US/Central /etc/localtime`

Set hardware clock using `# hwclock --systohc --cdt`

### Repositories
Enable multilib like before in `/etc/pacman.conf`

Put `ILoveCandy` in the same file under options if you want the pacman thing for package manger.

Sychronize and update database mirrors and packages using
```{sh}
# pacman -Syu
```
### Root Privilages
Set root password, create group `wheel` user and force user to change password on first login by
```{sh}
# passwd
# useradd -mg users -G wheel,storage,power -s /bin/bash $user
# passwd $user
# chage -d 0 $user
```

#### Add user to sudoers
```{sh}
# pacman -S sudo
# visudo
```

Uncomment the appropriate line to look like this:
```{conf}
%wheel All=(ALL) ALL
```

# Bootloader
We will use `grub` as our bootloader. Use this:
```{sh}
# pacman -S grub efibootmgr dosfstools os-prober mtools
# grub-install --target=x86_64-efi --bootloader-id=grub_uefi --recheck --efi-directory=/mnt/efi
```

Create grub config using
```{sh}
# grub-mkconfig -o /boot/grub/grub.cfg
```

# Done!!!
Your installation is complete. Use these commands to unmount paritions and reboot:
```{sh}
# exit
# umount -a
# telinit 6
```

Select `Arch Linux` in grub menu and Ta Da! You're done.

Check out my i3gaps [config](https://github.com/ameyrk99/i3wm-dots) if you choose to go with i3 as your wm.

