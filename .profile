# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -e /home/x/.nix-profile/etc/profile.d/nix.sh ];
then . /home/x/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer


set QT_QPA_PLATFORMTHEM=qt5ct

# add android studio to path
if [ -d "$HOME/.local/android-studio/bin" ] ; then
    PATH="$HOME/.local/android-studio/bin:$PATH"
fi

alias android-studio=studio.sh

#xrandr --output VGA-1-1 --auto --left-of DVI-D-0
source ~/.screenlayout/default.sh
bg_path=~/Pictures/wallhaven-boat.jpg
export bg_path

feh --bg-fill $bg_path
wal -i $bg_path

#
#xautolock -time 1 -locker "i3lock -i ~/Pictures/venom-bg.jpg -t"
#xidlehook --not-when-fullscreen --not-when-audio --timer 300 '~/.config/i3/lock -i ~/Pictures/venom-bg.jpg"&' '' --timer 3600	'systemctl suspend' '' &

xrdb -merge ~/.Xresources
setxkbmap -option "caps:swapescape"
xset r rate 200 25
