# base

## pacman

```
gnome-shell gdm gnome-console nautilus
```

```
openssh btop nano
```

## ssh
```
sudo systemctl enable --now sshd.service
```

## gdm
```
systemctl enable gdm.service
```  

# adds

## pacman

### gnome stuff
```
gnome-browser-connector gnome-tweaks gnome-control-center gnome-calculator gnome-calendar foliate loupe decibels gnome-text-editor gnome-font-viewer baobab snapshot
```

### apps
```
flatpak starship telegram-desktop neovim go rust nodejs npm gparted veracrypt cmake qbittorrent vlc inkscape gcolor3 eartag tree nvtop qtcreator qt6-base virtualbox virtualbox-host-dkms docker drawio-desktop-bin git-lfs 
```

loupe - images;
foliate - books;
decibels - music;
eartag - song tags;
vlc - video;
snapshot - camera.


### starship (installed via pacman)
```
eval "$(starship init bash)"
```

### docker
after install docker
```
sudo usermod -aG docker $USER
sudo systemctl enable --now docker.service
```
then reboot

### fonts
```
ttf-jetbrains-mono-nerd ttf-hack-nerd
```
or
```
nerd-fonts 
```
to select needed

## yay

```
vscodium-bin balena-etcher-bin grub-customizer google-chrome android-studio onlyoffice-bin lmstudio
```

### lmstudio
vulkan drivers for lmstudio (maybe something is unnecessary)
```
vulkan-tools mesa-utils vulkan-radeon
```

## flatpak
```
obsidian
```

# plus

## Save passwords in git
```
git config --global credential.helper store
```

## Gnome fractional scaling
```
gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"
```


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


## lts kernel
install:
```
sudo pacman -S linux-lts linux-lts-headers
```
update grub:
```
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

## printers

```
sudo pacman -S cups cups-pdf ghostscript gsfonts hplip system-config-printer print-manager
```

```
yay -S kyocera_universal 
```
Dependency conflicts might appear. Delete manually and retry installation

```
sudo systemctl enable --now cups.service
```

```
sudo gpasswd -a $USER lp
```