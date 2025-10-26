# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source profile if it hasn't yet been sourced
if [[ -z "$EDITOR" ]] && [[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/profile" ]]; then
    source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/profile"
fi

# Load aliases
if [[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ]]; then
    source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"
fi

# History
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/bash/history"
HISTSIZE=10000000
SAVEHIST=10000000

# get that color prompt, where possible
case "$TERM" in
    xterm-color|*-256color)
        color_prompt=yes;;
esac

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi

unset color_prompt force_color_prompt
