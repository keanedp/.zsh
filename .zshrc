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
ENABLE_CORRECTION='false'
export UPDATE_ZSH_DAYS=7

# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS='mm/dd/yyyy'

plugins=(git lein colored-man-pages zsh-syntax-highlighting copy cat java-v direnv elixir zsh-completions)
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

########################
# end oh-my-zsh config #
########################

# set color to always so that output will not include color control characters when redirecting or piping
export GREP_OPTIONS='--color=auto' 

# keep history between iex sessions
export ERL_AFLAGS="-kernel shell_history enabled"

alias gism='git submodule update --init --recursive'
alias gusm='git submodule update --recursive --remote'

#default to java 8 - from java-v custom plugin
java8

for f in $ZDOTDIR/.zshrc_local/*.sh; do
    . $f
done 2> /dev/null

