# EXA is a nice replacement for ls and tree
if command -v exa >/dev/null 2>&1; then
    alias exa="exa --git --group-directories-first"
    alias ls="exa"
    alias tree="exa -T"
else
    echo "> EXA not installed, 'ls' and 'tree' are therefore not aliases."
fi

# If nvim is installed use it instead of vim
if command -v nvim >/dev/null 2>&1; then
    alias vi=nvim
    alias vim=nvim
else
    echo "> NeoVim not installed, 'vi' and 'vim' are therefore not configured."
fi
