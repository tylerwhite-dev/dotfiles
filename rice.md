sudo pacman -Sy

# main

sudo pacman -S ssh fastfetch btop neovim flatpak gnome-shell gdm network-manager-applet gnome-console gnome-browser-connector gnome-tweaks gnome-control-center firefox 

systemctl start sshd.service && systemctl enable sshd.service
systemctl enable gdm.service

# ext

## pacman
foliate libreoffice gparted veracrypt cmake qbottorrent

main-menu gnome-clock document-view grub-customizer gedit amnezia gnome-calculator 
## yay
vscodium-bin balena-etcher-bin 

## flatpak
obsidian telegram