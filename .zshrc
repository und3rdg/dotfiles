# Path to your oh-my-zsh configuration.
ZSH=$HOME/.myconf/oh-my-zsh

# source "~/.vim/plugged/gruvbox/gruvbox_256palette.sh"
export TERM=xterm-256color

source $HOME/.myconf/zshtemplates

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:~/bin/

# (FIX) grep: warning: GREP_OPTIONS is deprecated; please use an alias or script
alias grep="/usr/bin/grep $GREP_OPTIONS"
unset GREP_OPTIONS

source $HOME/.myconf/aliases
