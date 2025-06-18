# base

## pacman
```
ssh flatpak fastfetch btop neovim gnome-shell gdm network-manager-applet gnome-console gnome-browser-connector gnome-tweaks gnome-control-center
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
foliate gparted veracrypt cmake qbottorrent loupe grub-customizer gnome-calculator papers vlc
```
## yay

```
vscodium-bin balena-etcher-bin grub-customizer
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