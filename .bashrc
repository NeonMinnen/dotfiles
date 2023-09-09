# ~/.bashrc

###PROFILE
[[ -e ~/.profile ]] && source ~/.profile

# Enable bash programmable completion features in interactive shells
if [ -f /usr/share/bash-completion/bash_completion ]; then
	. /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi
#Find dir_colors
if [ -f ~/.dir_colors ]; then
    eval `dircolors ~/.dir_colors`
fi

# Use neovim for vim if present.
[ -x "$(command -v nvim)" ] && alias vim="nvim" vimdiff="nvim -d"

## Export
export TERM="xterm-256color" 
export TERM="screen-256color"       # for a tmux -2 session (also for screen)
export TERM="rxvt-unicode-256color" # for a colorful rxvt unicode session
export EDITOR="nvim"
export HISTCONTROL=ignoredups:erasedups           # no duplicate entries
export TERMINAL="alacritty"
export PATH=$PATH:$HOME/.local/bin
export BROWSER="firefox"
export MUSIC_DIR="/mnt/Synology/Music"
export MPD_HOST="localhost"
export MPD_PORT="6600"
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_QPA_PLATFORMTHEME=qt5ct
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export BAT_THEME="base16-256"

#Starship
eval "$(starship init bash)"

unset rc

##auto start neofetch when bash opens
neofetch

#FZF
export FZF_DEFAULT_OPTS="--preview 'bat --color=always {}'"
export FZF_DEFAULT_OPTS='-i --height=40%'

##ALIAS##
alias rm='rm -vI'
alias mv='mv -iv'
alias cp='cp -iv'
alias mkdir='mkdir -pv'
alias v='fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs nvim'
alias nf='neofetch'
alias cc='clear'
alias df='df -h'
alias cat='bat'
alias free='free -m' # show sizes in MB
alias x='sxiv -t *'
alias nb='newsboat'
alias z='zathura'
#Exa Alias
alias ll='eza --all --long --color=auto --icons --group-directories-first'
alias la='eza --grid --all --color auto --icons --sort=type'
alias lt='eza --tree --level=2 --icons'
alias ls='eza --grid --color auto --icons --sort=type'

#More Random Alias
alias speed='speedtest-cli'
alias nvidia-settings='nvidia-settings --config="$XDG_CONFIG_HOME"/nvidia/settings'
alias music="ncmpcpp"
alias conf='cd ~/.config'
alias monerod='monerod --data-dir "$XDG_DATA_HOME"/bitmonero'
alias yt="yt-dlp"
alias nc='cd $NEXTCLOUD'
alias mp4='find . -name "*.webm" -exec ffmpeg -i {} -qscale 0 {}.mp4 \;'

# Change directory aliases
alias home='cd ~'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'


# Alias's for archives
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'

# Merge Xresources
alias merge='xrdb -merge ~/.Xresources'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#shopt
shopt -s autocd
shopt -s cdspell
shopt -s histappend # do not overwrite history
shopt -s cmdhist # save multi-line commands in history as single line

#ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"


