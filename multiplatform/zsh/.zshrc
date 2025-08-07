# enable starship prompt
eval "$(starship init zsh)"

# homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# have history to
export HISTFILE=~/.zsh_history

# history file size
export HISTSIZE=1000
export SAVEHIST=$HISTSIZE

# enable history
setopt APPEND_HISTORY

# do not save trash commands
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS

# enable plugins
# TODO: refactor plugins to separate file

# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# source /home/linuxbrew/.linuxbrew/opt/zsh-autosuggestions/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /home/linuxbrew/.linuxbrew/opt/zsh-syntax-highlighting/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh