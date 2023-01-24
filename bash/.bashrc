#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#Starship
eval "$(starship init bash)"

unset rc
##auto start neofetch when bash opens
neofetch


##ALIAS##

#NeoVim Alias
alias v='nvim'

#Neofetch Alias
alias nf='neofetch'

#Clear the screen of clutter
alias cc='clear'

##auto run ls for exa
alias ll='exa -al --color=always --group-directories-first'

#Update DNF & Flatpaks
alias upall='sudo dnf update --refresh -y && flatpak update -y'

#shorten speedtest-cli command
alias speed='speedtest-cli'


##auto cd to directory name
shopt -s autocd

#Dotfile Cleanup Move for .wget-hsts
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"


#Ninja-XDG Env Variables
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
#Disable Files
export LESSHISTFILE=-
#
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export HISTFILE="${XDG_STATE_HOME}"/bash/history
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
# npm
# see npm config ls -l | grep /
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/config
export NPM_CONFIG_CACHE=$XDG_CACHE_HOME/npm
