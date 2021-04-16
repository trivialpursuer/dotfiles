# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

#Dotfiles
export DOTFILES="$HOME/projects/dotfiles"

#XDG for Dotfiles
export XDG_CONFIG_HOME="$HOME/.config"

#For specific Data
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"

#For cached files
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/trevor/.local/bin:/snap/bin:/usr/lib/llvm/9/bin:/home/trevor/.cargo/bin"

# Choose 256-color support if available
if [ -e /usr/lib/terminfo/x/xterm-256color ]; then
	export TERM='xterm-256color'
else
	export TERM='xterm-color'
fi

# You may need to manually set your language environment
export LANG=en_US.UTF-8

#For Eclipse
export SWT_GTK3=0

#Less configuration (4-space tabstop)
export LESS=-Rx4

#For Bird Projects Cross-compiling
export TOOLS_DIR="$HOME/projects/bird/vehicle-software/tools"

#GPG Configuration for Git
export GPG_TTY=$(tty)

#Use Ripgrep for FZF
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
