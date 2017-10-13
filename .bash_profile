#git bash completion after running brew install bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
export TERM=xterm-256color

# aliases
alias ctags="`brew --prefix`/bin/ctags"
alias l="ls -G"
alias ls="ls -G"
alias c="clear"
alias p="pwd"

function prompt_git() {
    local output
    output="$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"
    [[ $? != 0 ]] && return;
    echo " ($output)"
}


# Base styles and color palette
export TERM='xterm-256color'
BOLD="\[$(tput bold)\]"
RESET=$(tput sgr0)

style_user="$KHAKI1"
style_path="\[$RESET\]$DODGER_BLUE"
style_branch="\[$RESET\]$GREEN3"
style_chars="\[$RESET\]$WHITE"

KHAKI1="\[$RESET\]\[\033[38;5;228m\]"
WHITE="\[$RESET\]\[\033[38;5;15m\]"
DODGER_BLUE="\[$RESET\]\[\033[38;5;33m\]"
GREEN3="\[$RESET\]\[\033[38;5;40m\]"

export PS1="$BOLD$WHITE[$KHAKI1\u$WHITE:$DODGER_BLUE\W$GREEN3\$(prompt_git)$WHITE]\\$ \[$RESET\]"

_expand(){ true; } # stop ~ expanding to /Users/... with <tab> press

# added by Miniconda3 4.2.12 installer
export PATH="/Users/aly/workspace/miniconda3/bin:$PATH"
