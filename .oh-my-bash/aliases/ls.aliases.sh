#! bash oh-my-bash.module
#  ---------------------------------------------------------------------------

# ls
TREE_IGNORE="cache|log|logs|node_modules|vendor"
alias ls=' eza --group-directories-first --icons'
alias la=' ls -a --icons'
alias ll=' ls --git -l --icons'
alias lal='ls -a -l --icons'
alias lt=' ls --tree -D -L 2 -I ${TREE_IGNORE} --icons'
alias ltt=' ls --tree -D -L 3 -I ${TREE_IGNORE} --icons'
alias lttt=' ls --tree -D -L 4 -I ${TREE_IGNORE} --icons'
alias ltttt=' ls --tree -D -L 5 -I ${TREE_IGNORE} --icons'
