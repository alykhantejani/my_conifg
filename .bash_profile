#!/bin/bash
export MYPS='$(echo -n "${PWD/#$HOME/~}" | awk -F "/" '"'"'{
#
if (length($0) > 14) { if (NF>4) print $1 "/" $2 "/.../" $(NF-1) "/" $NF;
else if (NF>3) print $1 "/" $2 "/.../" $NF;
else print $1 "/.../" $NF; }
else print $0;}'"'"')'
if [ $ITERM_SESSION_ID ]; then
  export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi
#
PS1='\u@\h:$(eval "echo ${MYPS}")$ '

###############ALIASES#############################
alias l="ls -G"
alias ls="ls -G"
alias c="clear"
alias p="pwd"
alias cleanupDS="find ~ -type f -name '*.DS_Store' -ls -deletei"
alias torch='qlua -e "require('"'"'trepl'"'"')()"'
####################################################



# added by Anaconda 2.3.0 installer
export PATH="/usr/local/bin:/Users/aly/anaconda/bin:/Users/aly/.gem/ruby/2.2.0/:/Users/aly/.rbenv/versions/2.2.2/lib/ruby/gems/2.2.0:$PATH"

export PYTHONPATH=/usr/local/google_appengine/:/Users/aly/workspace/visual_search_utils/modules:$PYTHONPATH
export DYLD_LIBRARY_PATH=/Users/aly/workspace/torch/install/lib:$DYLD_LIBRARY_PATH
#export LUA_PATH=/Users/aly/workspace/large_scale_training/?.lua:$LUA_PATH

. /Users/aly/workspace/torch/install/bin/torch-activate

test -f ~/.git-completion.bash && . $_
eval "$(rbenv init -)"


. /Users/aly/workspace/torch/install/bin/torch-activate


. /Users/aly/workspace/torch/install/bin/torch-activate
export LUA_PATH="/Users/aly/workspace/nura/?.lua;$LUA_PATH"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/Users/aly/workspace/VisualSFM_OS_X_Installer/vsfm/bin
export PATH=/Users/aly/workspace/VisualSFM_OS_X_Installer/vsfm/bin:$PATH
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
