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

######
# i3 #
######
rm -rf "$HOME/.config/i3"
ln -s "$HOME/projects/dotfiles/i3" "$HOME/.config"

#######
# zsh #
#######
if ! [ -d ~/.oh-my-zsh ]; then
    OH_MY_ZSH_URL=\
    https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
    cd && RUNZSH=no sh -c "$(curl -fsSL $OH_MY_ZSH_URL)"
fi

mkdir -p "$HOME/.config/zsh"
ln -sf "$HOME/projects/dotfiles/zsh/.zshenv" "$HOME"
ln -sf "$HOME/projects/dotfiles/zsh/.zshrc" "$HOME/.config/zsh"
ln -sf "$HOME/projects/dotfiles/zsh/aliases" "$HOME/.config/zsh/aliases"
rm -rf "$HOME/.config/zsh/external"
ln -sf "$HOME/projects/dotfiles/zsh/external" "$HOME/.config/zsh"
