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
sudo systemctl enable --now sshd.service
```

```
systemctl enable gdm.service
```  

# adds

## pacman

```
gnome-browser-connector gnome-tweaks gnome-control-center gnome-calculator gnome-calendar foliate loupe decibels gnome-text-editor gnome-font-viewer collision baobab git-lfs
```

```
gparted veracrypt cmake qbittorrent vlc inkscape eartag tree nvtop qtcreator qt6-base virtualbox virtualbox-host-dkms docker 
```

loupe - images;
foliate - books;
decibels - music;
eartag - song tags;
vls - video;
snapshot - camera.


[more Gnome apps](https://apps.gnome.org/)

## yay

```
visual-studio-code-bin balena-etcher-bin grub-customizer google-chrome android-studio onlyoffice-bun lmstudio
```

```
nerd-fonts 
```
select needed

## flatpak
```
obsidian telegram drawio
```


# plus

```
git config --global credential.helper store
```

## lmstudio
vulkan drivers for lmstudio (maybe something is unnecessary)
```
vulkan-tools mesa-utils vulkan-radeon
```

## docker
after install docker
```
sudo usermod -aG docker $USER
sudo systemctl enable --now docker.service
```
then reboot

## git-lfs
install git-lfs && go to repository
```
git lfs install
git lfs fetch
git lfs checkout
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