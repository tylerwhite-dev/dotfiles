# packages

## full no confirm update
```
sudo pacman -Syu --noconfirm && yay -Syu --noconfirm && flatpak update -y && brew update && brew upgrade
```

## apps

### pacman
```
flatpak firefox openssh zsh go gparted veracrypt qbittorrent vlc vlc-plugins-all inkscape foliate eartag nvtop qtcreator qt6-base virtualbox virtualbox-host-dkms docker timeshift cronie wl-clipboard
```

### yay
```
vscodium-bin balena-etcher-bin grub-customizer google-chrome android-studio onlyoffice-bin lmstudio drawio-desktop-bin amneziavpn-bin
```

### flatpak
```
telegram obsidian extensionManager
```

### brew
check `multiplatform/brew/formulae.md` to see what to install with homebrew

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

## zsh
```
chsh -s $(which zsh)                        # make ZSH default shell
```

install plugins (pacman, homebrew, etc...):
```
zsh-autosuggestions zsh-syntax-highlighting
```

add installation path to `~/.zshrc`


## starship
go to: `~/.zshrc` file (or other rc file associated with your shell)

write:
```
eval "$(starship init bash)"                # for bash
```

```
eval "$(starship init zsh)"                 # for zsh
```

## timeshift
if scheduled snapshots not working
```
sudo systemctl enable --now cronie.service
```

## docker
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
sudo pacman -S gnome-shell gdm gnome-console nautilus
```

### gdm
```
sudo systemctl enable gdm.service
```  

### apps

```
sudo pacman -S gnome-browser-connector gnome-tweaks gnome-control-center gnome-calculator gnome-calendar loupe decibels gnome-text-editor gnome-font-viewer baobab snapshot gcolor3
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

### shell settings
```
# enable experimental scaling features
gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer', 'xwayland-native-scaling']"

# center new windows on the screen
gsettings set org.gnome.mutter center-new-windows true

# smart focus behavior for new windows
gsettings set org.gnome.desktop.wm.preferences focus-new-windows 'smart'
```

### theme for qt apps
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

### theme for legacy gtk apps
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