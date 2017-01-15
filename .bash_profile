export PS1="\[\033[38;5;11m\]\u@\h\[$(tput sgr0)\]\[\033[38;5;15m\][\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;14m\]\W\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]]: \[$(tput sgr0)\]"

###############ALIASES#############################
alias l="ls -G"
alias ls="ls -G"
alias c="clear"
alias p="pwd"

#git bash completion after running brew install bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
