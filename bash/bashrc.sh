#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# bash completion
BASH_COMPLETION=/usr/share/bash-completion/bash_completion
if [ -f $BASH_COMPLETION ]; then
    source $BASH_COMPLETION
fi

# autojump
AUTO_JUMP=/usr/share/autojump/autojump.sh
if [ -f $AUTO_JUMP ]; then
    source $AUTO_JUMP
fi

# extern bash configuration for diffrent computer
EXTRC=~/.xmonad/bash/extrc.sh
if [ -f $EXTRC ]; then
    source $EXTRC
fi

# git completion
GIT_COMPLETE=~/.xmonad/bash/git-completion.sh
if [ -f $GIT_COMPLETE ]; then
    source $GIT_COMPLETE
fi

# git prompt
GIT_PROMPT=~/.xmonad/bash/git-prompt.sh
if [ -f $GIT_PROMPT ]; then
    source $GIT_PROMPT
fi

# bash aliases
BASH_ALIASES=~/.xmonad/bash/bash_aliases.sh
if [ -f $BASH_ALIASES ]; then
    source $BASH_ALIASES
fi

# golang
export GOPATH=$HOME/golang
export PATH=$GOPATH/bin:/usr/local/openresty/bin:$PATH

# set default enviroment
export TERM=xterm-256color
export EDITOR=vim
export PS1='\[\033[38;5;2m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;11m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;6m\]\W\[$(tput sgr0)\]\[\033[38;5;15m\]$(__git_ps1 " (%s)"): \[$(tput sgr0)\]'