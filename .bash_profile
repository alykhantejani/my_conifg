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
    echo " $style_branch($output)"
}

# Base styles and color palette
export TERM='xterm-256color'
BOLD=$(tput bold)
RESET=$(tput sgr0)

KHAKI1=$(tput setaf 228)
WHITE=$(tput setaf 15)
DODGER_BLUE=$(tput setaf 33)
GREEN3=$(tput setaf 40)

style_user="$RESET$KHAKI1"
style_path="$RESET$DODGER_BLUE"
style_branch="$RESET$GREEN3"
style_chars="$RESET$WHITE"

export PS1=""
PS1+="\[$style_chars\]["
PS1+="$style_user\u" # Username
PS1+="$style_chars:" # :
PS1+="$style_path\W" # Working directory
PS1+="\$(prompt_git)" # Git details
PS1+="\[$style_chars\]]\$ \[$RESET\]" # ]$ and reset color


_expand(){ true; } # stop ~ expanding to /Users/... with <tab> press

# added by Miniconda3 4.2.12 installer
export PATH="/Users/aly/workspace/miniconda3/bin:$PATH"
