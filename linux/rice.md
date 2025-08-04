# packages

## apps

### pacman 
```
openssh flatpak btop nano starship telegram-desktop neovim go rust nodejs npm gparted veracrypt cmake qbittorrent vlc inkscape eartag tree nvtop qtcreator qt6-base virtualbox virtualbox-host-dkms docker git-lfs timeshift wl-clipboard
```

### yay
```
vscodium-bin balena-etcher-bin grub-customizer google-chrome android-studio onlyoffice-bin lmstudio drawio-desktop-bin amneziavpn-bin
```

### flatpak
``` flatpak
obsidian extensionManager
```

## fonts
```
ttf-jetbrains-mono-nerd ttf-hack-nerd
```
or
```
nerd-fonts 
```
to select needed


# configurations

## ssh
```
sudo systemctl enable --now sshd.service
```

## starship

go to: .[$SHELL]rc

write:
```
eval "$(starship init bash)"
```

## docker
after install docker
```
sudo usermod -aG docker $USER
sudo systemctl enable --now docker.service
```
reboot system


## lmstudio
vulkan drivers for lmstudio (maybe something is unnecessary)
```
vulkan-tools mesa-utils vulkan-radeon
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


# ui

## gnome

``` pacman
gnome-shell gdm gnome-console nautilus
```

### gdm
```
sudo systemctl enable gdm.service
```  

### apps

``` pacman
gnome-browser-connector gnome-tweaks gnome-control-center gnome-calculator gnome-calendar foliate loupe decibels gnome-text-editor gnome-font-viewer baobab snapshot gcolor3
```

loupe - images;
foliate - books;
decibels - music;
eartag - song tags;
vlc - video;
snapshot - camera.

### extensions
```
gnome-shell-extension-dash-to-panel gnome-shell-extension-rounded-window-corners-reborn
```

### shell settings
```
gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer', 'xwayland-native-scaling']"
gsettings set org.gnome.mutter center-new-windows true
```

### theme for qt apps
``` pacman
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

### theme for legacy gtk apps
``` pacman
adw-gtk-theme
```

Light theme:
```
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3' && gsettings set org.gnome.desktop.interface color-scheme 'default'
```

Dark theme:
```
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark' && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
```

Revert to default:
```
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita' && gsettings set org.gnome.desktop.interface color-scheme 'default'
```