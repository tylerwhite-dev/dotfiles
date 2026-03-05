# installation

[brew](https://brew.sh)
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

# packages

## casks
```
--cask telegram obsidian google-chrome betterdisplay transmission qbittorrent macmon balenaetcher steam iina mos playcover-community utm veracrypt macfuse appcleaner logi-options+ amneziavpn lm-studio 

visual-studio-code vscodium docker-desktop virtualbox android-studio 
```

## utilities
```
zsh-autosuggestions zsh-syntax-highlighting superfile yazi file-formula starship tmux fastfetch btop tree git-lfs yt-dlp nvtop stow mailsy imagemagick qwen-code gromgit/brewtils/taproom zoxide eza pfetch 
```

## developer
```
lazygit neovim rustup cmake nvm go uv qt-creator qt 
```

## fonts
```
font-jetbrains-mono font-jetbrains-mono-nerd-font font-hack-nerd-font 
```

# configurations

## starship
( contained in [`zshrc macos`](../multiplatform/zsh/zshrc%20macos) )

add to file ~/.zshrc (contained in `.zshrc macos`)
```
eval "$(starship init bash)"
```

## rustup
```
rustup install stable

rustup default stable

rustc -V
cargo -V
rustup show
```