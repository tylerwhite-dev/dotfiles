# I use arch btw

# packages

## full no confirm update
```
sudo pacman -Syu --noconfirm && yay -Syu --noconfirm && flatpak update -y && brew update && brew upgrade
```

## apps

### pacman

could be installed as brew
superfile zsh zsh-autosuggestions zsh-syntax-highlighting starship tmux fastfetch btop tree git-lfs yt-dlp nvtop docker
```

```
flatpak openssh cronie wl-clipboard fwupd wmctrl

firefox alacritty gparted veracrypt vlc vlc-plugins-all inkscape foliate eartag virtualbox virtualbox-host-dkms timeshift

neovim cmake go qtcreator qt6-base docker rustup
```

### yay
```
google-chrome lmstudio amneziavpn-bin balena-etcher (recomend to install after nvm configured)

vscodium-bin
```

#### fonts
```
ttf-jetbrains-mono-nerd ttf-hack-nerd
```
or `nerd-fonts` to select needed

### brew
[installation and formulae](brew.md)


# configurations

some configurations contained in [`configurations file`](configurations.md)

## ssh
```
sudo systemctl enable --now sshd.service
```

## fwupd
```
sudo systemctl status fwupd.service
```

## lmstudio
vulkan drivers for lmstudio (maybe something is unnecessary)
```
vulkan-tools mesa-utils vulkan-radeon
```

## amnezia

install via AUR or get [from github](https://github.com/amnezia-vpn/amnezia-client/releases)

[connection bug Arch](https://github.com/amnezia-vpn/amnezia-client/issues/792#issuecomment-2508097498)

```
sudo systemctl enable systemd-resolved.service && sudo systemctl start systemd-resolved.service
```

```
sudo ln -sf ../run/systemd/resolve/stub-resolv.conf /etc/resolv.conf
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


# gui

## gnome

```
sudo pacman -S gnome-shell gdm gnome-console
```

### gdm
```
sudo systemctl enable gdm.service
```  

### apps

```
sudo pacman -S nautilus gnome-browser-connector gnome-tweaks gnome-control-center gnome-calculator gnome-calendar loupe decibels gnome-text-editor gnome-font-viewer baobab snapshot gcolor3
```

loupe - images;
decibels - music;
eartag - song tags;
vlc - video;
snapshot - camera.

### extensions
```
yay -S gnome-shell-extension-dash-to-panel gnome-shell-extension-rounded-window-corners-reborn
```

### configurations
some gnome settings contained in [`configurations file`](configurations.md)


#### theme for qt apps
```
sudo pacman -S qt6ct qt5ct kvantum kvantum-theme-libadwaita-git
```

go to: `~/.bash_profile` file

write:
```
export QT_QPA_PLATFORMTHEME=qt6ct
```

relogin

set theme in kvantum

set theme "kvantum" in qt6ct

#### theme for legacy gtk apps
```
sudo pacman -S adw-gtk-theme
```

light theme:
```
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3' && gsettings set org.gnome.desktop.interface color-scheme 'default'
```

dark theme:
```
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark' && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
```

revert to default:
```
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita' && gsettings set org.gnome.desktop.interface color-scheme 'default'
```