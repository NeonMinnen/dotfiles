# ~/.bash_profile
#
if [ -f $HOME/.bashrc ]; then
        source $HOME/.bashrc
fi

#Use Startx
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
startx
fi

