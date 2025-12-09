# installation

[website](https://brew.sh)
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

reboot and update packages

```
brew update && brew upgrade
```

if brew packages not available from automatic works (hooks for example), add homebrew to SYSTEM environment:

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

check
```
echo $PATH
which brew
```

WARNING: tested on arch btw, might be different on other distros

# formulae
```
zsh-autosuggestions zsh-syntax-highlighting superfile starship tmux fastfetch btop tree git-lfs yt-dlp nvtop
```

neovim cmake nvm go rustup docker
```