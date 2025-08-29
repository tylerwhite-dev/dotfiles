# configurations

## ssh
```
sudo systemctl enable --now sshd.service
```

## zsh
```
chsh -s $(which zsh)                        # make ZSH default shell
```

install plugins (pacman, homebrew, etc...)


add installation path to `~/.zshrc`
( some path contained in [`zshrc linux`](../crossplatform/zsh/zshrc%20linux) )

## starship 
( contained in [`zshrc linux`](../crossplatform/zsh/zshrc%20linux) )

go to: `~/.zshrc` file

```
eval "$(starship init zsh)"
```

## timeshift
if scheduled snapshots not working
```
sudo systemctl enable --now cronie.service
```

## nvm

follow commands after installation (create symlinks)

```
nvm install --lts

nvm use node --lts

nvm --version     
node -v
npm -v
```

## rustup
```
rustup install stable

rustup default stable

rustc -V
cargo -V
rustup show
```

## docker
```
sudo usermod -aG docker $USER
sudo systemctl enable --now docker.service
```

reboot system

## gnome

### shell settings
```
# enable experimental scaling features
gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer', 'xwayland-native-scaling']"

# center new windows on the screen
gsettings set org.gnome.mutter center-new-windows true

# smart focus behavior for new windows
gsettings set org.gnome.desktop.wm.preferences focus-new-windows 'smart'
```