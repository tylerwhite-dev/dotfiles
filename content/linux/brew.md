# installation

[website](https://brew.sh)
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

reboot and check
```
echo $PATH
which brew
```

if you need package under root, add homebrew to system environment:

go to: `/etc/profile`

write:
```
if [ -d "/home/linuxbrew/.linuxbrew/bin" ]; then
    export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
fi
```

read:
```
source /etc/profile
```

WARNING: tested on arch btw, might be different on other distros

# formulae
```
zsh-autosuggestions zsh-syntax-highlighting stow yazi file-formula superfile starship tmux neovim fastfetch btop tree git-lfs yt-dlp nvtop mailsy imagemagick qwen-code gromgit/brewtils/taproom zoxide eza lazygit pfetch


cmake nvm rustup uv
```