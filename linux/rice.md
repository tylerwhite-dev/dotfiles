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
gnome-browser-connector gnome-tweaks gnome-control-center gnome-calculator foliate loupe papers
```

```
gparted veracrypt cmake qbittorrent vlc inkscape 
```
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

[Баг с подключением на Arch](https://github.com/amnezia-vpn/amnezia-client/issues/792#issuecomment-2090598218)

```
systemctl restart NetworkManager
``` 
между шагами 1 и 2


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