# packages

## apt
```
sudo git curl flatpak ssh zsh gparted vlc inkscape timeshift foliate eartag wl-clipboard starship fastfetch btop nvtop zsh-autosuggestions zsh-syntax-highlighting wmctrl

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

### offline inst

after offline installation network is not configured

in `/etc/network/interfaces` to configure network
```
auto <interface>
iface <interface> inet dhcp
```

in `/etc/apt/sources.list` to configure repositories (for debian 13)
```
deb http://deb.debian.org/debian/ trixie main non-free-firmware
deb-src http://deb.debian.org/debian/ trixie main non-free-firmware

deb http://security.debian.org/debian-security trixie-security main non-free-firmware
deb-src http://security.debian.org/debian-security trixie-security main non-free-firmware

deb http://deb.debian.org/debian/ trixie-updates main non-free-firmware
deb-src http://deb.debian.org/debian/ trixie-updates main non-free-firmware
```


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