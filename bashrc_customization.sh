#!/usr/bin/env bash

echo "Customizing .bashrc..."
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]$PWD\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:$PWD\$ '
fi

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: $PWD\a\]$PS1"
    ;;
*)
    ;;
esac
export __BASHRC_CUSTOMIZED__=true
echo "Customizing .bashrc done."

