#!/usr/bin/env sh

# Main packages
PACKAGE_LIST="gvim alacritty awesome fish starship emacs stow"

# Programs used in awesome wm
PACKAGE_LIST="$PACKAGE_LIST rofi dmenu volumeicon network-manager-applet iwd archlinux-wallpaper xorg-setxkbmap"

# Programs used in fish greeting message
PACKAGE_LIST="$PACKAGE_LSIT lolcat fortune-mod cowsay"

# Some fonts
PACKAGE_LIST="$PACKAGE_LIST ttc-iosevka ttf-iosevka-nerd"

# Dev programs
PACKAGE_LIST="$PACKAGE_LIST clang ccls nvim gcc make cmake"

# If in arch linux install all the packages:
echo "Installing essential packages: $PACKAGE_LIST"
pacman -S $PACKAGE_LIST

# stow all dotfiles
echo "Making symlinks with stow"
stow alacritty
stow awesome
stow doom
stow fish
stow starship
stow backgrounds

echo "Finished!"
