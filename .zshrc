export EDITOR='emacs -nw'

##########################
# start oh-my-zsh config #
##########################

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$ZDOTDIR/custom"

ZSH_THEME='nanotech'

CASE_SENSITIVE='true'
HYPHEN_INSENSITIVE='true'
ENABLE_CORRECTION='true'
export UPDATE_ZSH_DAYS=7

# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS='mm/dd/yyyy'

plugins=(git lein git colored-man-pages zsh-syntax-highlighting copy cat java-v direnv)

source $ZSH/oh-my-zsh.sh

########################
# end oh-my-zsh config #
########################

alias gusm='git submodule update --recursive --remote'

#default to java 8 - from java-v custom plugin
java8

for f in $ZDOTDIR/.zshrc_local/*.sh; do
    . $f
done 2> /dev/null

