# ~/.bash_profile
#
if [ -f $HOME/.bashrc ]; then
        source $HOME/.bashrc
fi

#Use Startx
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
startx
fi

# Set XDG Base Directory
#   - https://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html
export XDG_LOCAL_HOME="${HOME}/.local"
export XDG_DATA_HOME="${XDG_LOCAL_HOME}/share"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_STATE_HOME="${HOME}/.local/state"

# Disable Home Dir Clutter
export LESSHISTFILE=-
export HISTFILE="${XDG_STATE_HOME}"/bash/history
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export HISTFILE="$XDG_STATE_HOME"/bash/history
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
export ANSIBLE_HOME="$XDG_DATA_HOME"/ansible
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"

# QT5 qt5ct
export QT_QPA_PLATFORMTHEME=qt5ct

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
