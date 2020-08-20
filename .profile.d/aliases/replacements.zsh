# EXA is a nice replacement for ls and tree
if command -v exa >/dev/null 2>&1; then
    alias exa="exa --git --group-directories-first"
    alias ls="exa"
    alias tree="exa -T"
else
    echo "> EXA not installed, 'ls' and 'tree' are therefore not aliases."
fi
