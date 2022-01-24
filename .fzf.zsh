# Setup fzf
# ---------
if [[ ! "$PATH" == */home/trevor/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/trevor/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/trevor/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/trevor/.fzf/shell/key-bindings.zsh"
