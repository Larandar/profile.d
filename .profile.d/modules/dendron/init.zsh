export DENDRON_HOME=$HOME/Notes

function dendron {
    local workspace=$DENDRON_HOME/$1/dendron.code-workspace
    if [[ ! -f $workspace ]]; then
        echo "Could not find workspace: ${workspace}" >&2
        echo "Available workspaces:" >&2
        exa --colour=always -1 $DENDRON_HOME >&2
        return 1
    fi
    code $workspace

}