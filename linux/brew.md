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

go to: `/etc/environment`

write:
```
PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/linuxbrew/.linuxbrew/bin"
```

then reboot

WARNING: some packages might behave incorrect and prefered to be installed via build-in package manager

# formulae
```
zsh-autosuggestions zsh-syntax-highlighting superfile starship tmux fastfetch btop tree git-lfs yt-dlp nvtop
```

# developer
```
neovim cmake nvm go rustup
```