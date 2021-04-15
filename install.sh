#!/bin/bash

########
# nvim #
########
mkdir -p "$HOME/.config/nvim/undo"
ln -sf "$HOME/projects/dotfiles/nvim/init.vim" "$HOME/.config/nvim"

#############
# X11 Stuff #
#############
# rm -rf "$HOME/.config/X11"
ln -sf "$HOME/projects/dotfiles/X11/.Xresources" "$HOME/.Xresources"
