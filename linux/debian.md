# packages

## apt
```
sudo git curl flatpak ssh zsh gparted vlc inkscape timeshift foliate eartag wl-clipboard starship fastfetch btop nvtop zsh-autosuggestions zsh-syntax-highlighting

build-essential cmake clang rustup

qt6-base-dev qtcreator qt6-declarative-dev qml6-module-qtquick qml6-module-qtquick-controls
```

### configurations

some configurations contained in [`configurations file`](configurations.md)

# gui

## gnome

### basic

```
gnome-shell gdm3 gnome-console
```

enable gdm

```
sudo systemctl enable gdm.service
```

### apps
```
nautilus gnome-browser-connector gnome-tweaks gnome-control-center gnome-calculator gnome-calendar loupe gnome-text-editor gnome-font-viewer baobab snapshot gcolor3
```

### configurations

some gnome configurations contained in [`configurations file`](configurations.md)

## KDE

### basic
```
kde-plasma-desktop sddm
```

delete:
```
konqueror plasma-discover zutty
```
