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
gparted veracrypt cmake qbittorrent vlc inkscape eartag tree
```

loupe - images;
papers - PDFs;
foliate - books;
decibels - music;
eartag - song tags;
vls - video;
snapshot - camera.

[more Gnome apps](https://apps.gnome.org/)

## yay

```
vscodium-bin visual-studio-code-bin balena-etcher-bin grub-customizer google-chrome android-studio onlyoffice-bun
```

```
nerd-fonts 
```
select needed

## flatpak
```
obsidian telegram drawio baobab collision
```
  

## github

[Amnezia](https://github.com/amnezia-vpn/amnezia-client/releases)

[Connection bug Arch](https://github.com/amnezia-vpn/amnezia-client/issues/792#issuecomment-2090598218)

```
systemctl restart NetworkManager
``` 
in between steps 1 and 2


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