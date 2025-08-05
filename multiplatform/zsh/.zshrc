# enable starship prompt
eval "$(starship init zsh)"

# have history to
export HISTFILE=~/.zsh_history

# history file si
export HISTSIZE=1000
export SAVEHIST=$HISTSIZE

# enable history
setopt APPEND_HISTORY

# do not save trash commands
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS

# enable plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# TODO: refactor plugins to separate file