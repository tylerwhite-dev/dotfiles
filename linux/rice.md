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
sudo systemctl enable gdm.service
```  

# adds

## pacman

### gnome stuff
```
gnome-browser-connector gnome-tweaks gnome-control-center gnome-calculator gnome-calendar foliate loupe decibels gnome-text-editor gnome-font-viewer baobab snapshot
```

### apps
```
flatpak starship telegram-desktop neovim go rust nodejs npm gparted veracrypt cmake qbittorrent vlc inkscape gcolor3 eartag tree nvtop qtcreator qt6-base virtualbox virtualbox-host-dkms docker git-lfs timeshift wl-clipboard
```

### fonts
```
ttf-jetbrains-mono-nerd ttf-hack-nerd
```
or
```
nerd-fonts 
```
to select needed

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


## yay

```
vscodium-bin balena-etcher-bin grub-customizer google-chrome android-studio onlyoffice-bin lmstudio drawio-desktop-bin amneziavpn-bin
```

#### gnome extensions
```
gnome-shell-extension-dash-to-panel gnome-shell-extension-rounded-window-corners-reborn
```

### lmstudio
vulkan drivers for lmstudio (maybe something is unnecessary)
```
vulkan-tools mesa-utils vulkan-radeon
```

## flatpak
```
obsidian extensionManager
```

# plus

## gnome shell fractional scaling
```
gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer', 'xwayland-native-scaling']"
```

## gnome shell settings
```
gsettings set org.gnome.mutter center-new-windows true
```

## amnezia

install via AUR or get [release on github](https://github.com/amnezia-vpn/amnezia-client/releases)

[connection bug Arch](https://github.com/amnezia-vpn/amnezia-client/issues/792#issuecomment-2090598218)

go to:
```
sudo nano /etc/NetworkManager/NetworkManager.conf
```

write:
```
[main]
dns=none
```

restart NetworkManager
```
sudo systemctl restart NetworkManager
``` 

go to:
```
sudo nano /etc/resolv.conf
```

write:
```
nameserver 1.1.1.1
nameserver 1.0.0.1
```

restart NetworkManager
```
sudo systemctl restart NetworkManager
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


### theme qt in gtk
```
qt6ct qt5ct kvantum kvantum-theme-libadwaita-git
```

go to: .[$SHELL]_profile

write:
```
export QT_QPA_PLATFORMTHEME=qt6ct
```

relogin

set theme in kvantum

set theme "kvantum" in qt6ct



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