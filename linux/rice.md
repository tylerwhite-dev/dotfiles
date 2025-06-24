# base

## pacman

```
gnome-shell gdm gnome-console nautilus
```
```
openssh flatpak fastfetch btop neovim go rust nodejs npm
```

## systemctl
```
systemctl start sshd.service && systemctl enable sshd.service
```

```
systemctl enable gdm.service
```  

# adds

## pacman

```
gnome-browser-connector gnome-tweaks gnome-control-center gnome-calculator gnome-calendar gnome-contacts foliate loupe papers decibels gnome-software gnome-text-editor gnome-font-viewer collision
```

```
gparted veracrypt cmake qbittorrent vlc inkscape eartag tree nvtop qtcreator qt6-base
```

loupe - images;
papers - PDFs;
foliate - books;
decibels - music;
eartag - song tags;
vls - video;
snapshot - camera.

vulkan drivers for lmstudio (maybe something is unnecessary)
```
vulkan-tools mesa-utils vulkan-radeon
```

[more Gnome apps](https://apps.gnome.org/)

## yay

```
vscodium-bin visual-studio-code-bin balena-etcher-bin grub-customizer google-chrome android-studio onlyoffice-bun lmstudio
```

```
nerd-fonts 
```
select needed

## flatpak
```
obsidian telegram drawio baobab collision
```
  

## Amnezia

[get release](https://github.com/amnezia-vpn/amnezia-client/releases)

[connection bug Arch](https://github.com/amnezia-vpn/amnezia-client/issues/792#issuecomment-2090598218)

/etc/NetworkManager/NetworkManager.conf:
```
[main]
dns=none
```

```
systemctl restart NetworkManager
``` 

/etc/resolv.conf:
```
nameserver 1.1.1.1
nameserver 1.0.0.1
```

```
systemctl restart NetworkManager
```

# plus

```
git config --global credential.helper store
```

[starship terminal](https://starship.rs/)

## LST kernel
install:
```
sudo pacman -S linux-lts
```
update grub:
```
sudo grub-mkconfig -o /boot/grub/grub.cfg
```