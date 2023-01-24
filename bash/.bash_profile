#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc


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
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export HISTFILE="$XDG_STATE_HOME"/bash/history
