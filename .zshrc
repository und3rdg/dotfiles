# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

source ".vim/plugged/gruvbox/gruvbox_256palette.sh"
export TERM=xterm-256color
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#export ZSH_THEME="re5et"


#export ZSH_THEME="afowler"
#export ZSH_THEME="alanpeabody"
#export ZSH_THEME="arrow"
#export ZSH_THEME="aussiegeek"
#export ZSH_THEME="awesomepanda"
#export ZSH_THEME="bira"
#export ZSH_THEME="blinks"
#export ZSH_THEME="candy"
#export ZSH_THEME="clean"
#export ZSH_THEME="cloud"
#export ZSH_THEME="cypher"
#export ZSH_THEME="dallas"
#export ZSH_THEME="darkblood"
#export ZSH_THEME="daveverwer"
#export ZSH_THEME="dieter"
##export ZSH_THEME="dogenpunk"
#export ZSH_THEME="dpoggi"
#export ZSH_THEME="dstufft"
#export ZSH_THEME="dst"
##export ZSH_THEME="duellj"
#export ZSH_THEME="eastwood"
#export ZSH_THEME="edvardm"
#export ZSH_THEME="evan"
#export ZSH_THEME="example"
#export ZSH_THEME="fishy"
#export ZSH_THEME="flazz"
#export ZSH_THEME="fletcherm"
#export ZSH_THEME="frisk"
#export ZSH_THEME="funky"
#export ZSH_THEME="fwalch"
#export ZSH_THEME="gallifrey"
#export ZSH_THEME="gallois"
#export ZSH_THEME="garyblessington"
#export ZSH_THEME="gentoo"
#export ZSH_THEME="geoffgarside"
#export ZSH_THEME="gozilla"
#export ZSH_THEME="humza"
#export ZSH_THEME="imajes"
#export ZSH_THEME="jbergantine"
#export ZSH_THEME="jispwoso"
#export ZSH_THEME="jnrowe"
#export ZSH_THEME="jonathan"
#export ZSH_THEME="josh"
#export ZSH_THEME="jreese"
#export ZSH_THEME="jtriley"
##export ZSH_THEME="juanghurtado"
#export ZSH_THEME="kardan"
#export ZSH_THEME="kennethreitz"
#export ZSH_THEME="kolo"
#export ZSH_THEME="kphoen"
#export ZSH_THEME="lambda"
#export ZSH_THEME="linuxonly"
#export ZSH_THEME="lukerandall"
#export ZSH_THEME="macovsky-ruby"
#export ZSH_THEME="macovsky"
#export ZSH_THEME="maran"
#export ZSH_THEME="mattcable"
#export ZSH_THEME="mgutz"
#export ZSH_THEME="mikeh"
#export ZSH_THEME="miloshadzic"
#export ZSH_THEME="minimal"
#export ZSH_THEME="mrtazz"
#export ZSH_THEME="murilasso"
#export ZSH_THEME="muse"
#export ZSH_THEME="nanotech"
#export ZSH_THEME="nebirhos"
#export ZSH_THEME="nicoulaj"
#export ZSH_THEME="obraun"
#export ZSH_THEME="philips"
#export ZSH_THEME="pmcgee"
#export ZSH_THEME="prose"
##export ZSH_THEME="re5et"
#export ZSH_THEME="rgm"
#export ZSH_THEME="risto"
##export ZSH_THEME="rixius"
#export ZSH_THEME="robbyrussell"
#export ZSH_THEME="simple"
#export ZSH_THEME="skaro"
#export ZSH_THEME="smt"
##export ZSH_THEME="Soliah"
#export ZSH_THEME="sorin"
#export ZSH_THEME="sporty_256"
##export ZSH_THEME="steeef"
#export ZSH_THEME="sunaku"
##export ZSH_THEME="sunrise"
#export ZSH_THEME="superjarin"
#export ZSH_THEME="takashiyoshida"
#export ZSH_THEME="terminalparty"
#export ZSH_THEME="theunraveler"
#export ZSH_THEME="tjkirch"
#export ZSH_THEME="tonotdo"
#export ZSH_THEME="trapd00r"
#export ZSH_THEME="wedisagree"
#export ZSH_THEME="wezm"
#export ZSH_THEME="wezm+"
export ZSH_THEME="xiong-chiamiov-plus"
#export ZSH_THEME="xiong-chiamiov"

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

# Aliases
alias la="ls -a"
alias ll-"ls -l"
alias tmux="tmux -2"

