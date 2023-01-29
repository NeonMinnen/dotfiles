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
alias v='nvim'
alias nf='neofetch'
alias cc='clear'
alias df='df -h'
alias ll='exa -al --color=always --group-directories-first'
alias upall='sudo dnf update --refresh -y && flatpak update -y'
alias speed='speedtest-cli'
alias nvidia-settings='nvidia-settings --config="$XDG_CONFIG_HOME"/nvidia/settings'
#shopt
shopt -s autocd
shopt -s cdspell

#ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"

#Dotfile Cleanup Move for .wget-hsts
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"

#Ninja-XDG Env Variables
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
#Disable Files
export LESSHISTFILE=-
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export HISTFILE="${XDG_STATE_HOME}"/bash/history
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc

PATH=$PATH:$HOME/.local/bin/
