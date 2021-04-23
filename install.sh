#!/bin/bash

########
# nvim #
########
git clone https://github.com/nanotech/jellybeans.vim "$XDG_CONFIG_HOME/nvim/jellybeans.vim"
ln -s "$XDG_CONFIG_HOME/nvim/jellybeans.vim/colors" "$XDG_CONFIG_HOME/nvim/colors"

mkdir -p "$XDG_CONFIG_HOME/nvim/undo"
ln -sf "$DOTFILES/nvim/init.vim" "$XDG_CONFIG_HOME/nvim"

[ ! -f "$DOTFILES/nvim/autoload/plug.vim" ] \
  && curl -fLo "$DOTFILES/nvim/autoload/plug.vim" --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p "$XDG_CONFIG_HOME/nvim/autoload"
ln -sf "$DOTFILES/nvim/autoload/plug.vim" "$XDG_CONFIG_HOME/nvim/autoload/plug.vim"
nvim --noplugin +PlugUpdate +qa

#############
# X11 Stuff #
#############
# rm -rf "$XDG_CONFIG_HOME/X11"
# ln -sf "$DOTFILES/X11/.Xresources" "$HOME/.Xresources"

######
# i3 #
######
# rm -rf "$XDG_CONFIG_HOME/i3"
# ln -s "$DOTFILES/i3" "$XDG_CONFIG_HOME"

###########
# thefuck #
###########
if ! [ -d ${HOME}/projects/thefuck ]; then
  git clone https://github.com/nvbn/thefuck ${HOME}/projects/thefuck
fi
pip3 install ${HOME}/projects}/thefuck

#######
# zsh #
#######
[ ! -d $HOME/.oh-my-zsh ] \
  && cd && RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

mkdir -p "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/.zshenv" "$HOME"
ln -sf "$DOTFILES/zsh/.zshrc" "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/aliases" "$XDG_CONFIG_HOME/zsh/aliases"
ln -sf "$DOTFILES/zsh/scripts.sh" "$XDG_CONFIG_HOME/zsh/scripts.sh"
rm -rf "$XDG_CONFIG_HOME/zsh/external"
ln -sf "$DOTFILES/zsh/external" "$XDG_CONFIG_HOME/zsh"

#########
# fonts #
#########
mkdir -p "$XDG_DATA_HOME"
cp -rf "$DOTFILES/fonts" "$XDG_DATA_HOME"

#########
# dunst #
#########
#mkdir -p "$XDG_CONFIG_HOME/dunst"
#ln -sf "$DOTFILES/dunst/dunstrc" "$XDG_CONFIG_HOME/dunst/dunstrc"

########
# tmux #
########
mkdir -p "$XDG_CONFIG_HOME/tmux"
ln -sf "$DOTFILES/tmux/tmux.conf" "$XDG_CONFIG_HOME/tmux/tmux.conf"

[ ! -d "$XDG_CONFIG_HOME/tmux/plugins/tpm" ] \
  && git clone https://github.com/tmux-plugins/tpm \
  "$XDG_CONFIG_HOME/tmux/plugins/tpm"

#################
# diff-so-fancy #
#################
git config --global core.pager "diff-so-fancy | less --tabs=2 -RFX"
