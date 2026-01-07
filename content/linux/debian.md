# packages

## apt

some could be installed as [brew](brew.md)
```
sudo git curl flatpak ssh zsh wl-clipboard starship fastfetch btop nvtop zsh-autosuggestions zsh-syntax-highlighting wmctrl git-lfs neovim

nautilus gnome-calculator gnome-calendar loupe gnome-text-editor gnome-font-viewer baobab snapshot gcolor3 gparted vlc inkscape timeshift foliate eartag gnome-browser-connector gnome-tweaks gnome-control-center gnome-console

build-essential cmake clang rustup

qt6-base-dev qtcreator qt6-declarative-dev qml6-module-qtquick qml6-module-qtquick-controls
```

## brew
[installation and formulae](brew.md)

## configurations

some configurations contained in [`configurations file`](configurations.md)

### sudo

run as root:

```
sudo usermod -aG sudo USER_NAME
```

### ssh
```
systemctl enable --now ssh
```
