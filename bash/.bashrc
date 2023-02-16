#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


## Export
export EDITOR="nvim"
export HISTCONTROL=ignoredups:erasedups           # no duplicate entries
export TERMINAL="alacritty"
export PATH=$PATH:$HOME/.local/bin
export BROWSER="firefox"
export MPD_HOST="localhost"
export MPD_PORT="6600"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#Starship
eval "$(starship init bash)"

#AntiDot
eval "$(antidot init)"

unset rc

##auto start neofetch when bash opens
pfetch

##ALIAS##
alias v='nvim'
alias nf='neofetch'
alias cc='clear'
alias lf="~/.local/bin/lfub"
alias df='df -h'
alias x='sxiv -t *'
alias ll='exa -al --color=always --group-directories-first'
alias lt='exa --tree --level=2 --icons'
alias upall='sudo pacman -Syu && flatpak update'
alias speed='speedtest-cli'
alias nvidia-settings='nvidia-settings --config="$XDG_CONFIG_HOME"/nvidia/settings'
alias music="ncmpcpp"
#shopt
shopt -s autocd
shopt -s cdspell

#ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"

#Dotfile Cleanup Move for .wget-hsts
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"

# Set XDG Base Directory
#   - https://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html
export XDG_LOCAL_HOME="${HOME}/.local"
export XDG_DATA_HOME="${XDG_LOCAL_HOME}/share"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_STATE_HOME="${HOME/.local/state}"
# Dot File Cleanup
export LESSHISTFILE=-
export HISTFILE="${XDG_STATE_HOME}"/bash/history
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export XCURSOR_PATH=/usr/share/icons:${XDG_DATA_HOME}/icons
export ERRFILE="$XDG_CACHE_HOME/X11/xsession-errors"



