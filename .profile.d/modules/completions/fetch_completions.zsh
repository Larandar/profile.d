#!/usr/bin/env zsh

function () {
    local completion_dir=$PROFILE_DIR/modules/completions/installed

    mkdir -p $completion_dir
    
    echo Fetching Docker completion file
    curl --silent -fLo $completion_dir/_docker           https://raw.githubusercontent.com/docker/cli/master/contrib/completion/zsh/_docker
    echo Fetching Docker-Compose completion file
    curl --silent -fLo $completion_dir/_docker-compose   https://raw.githubusercontent.com/docker/compose/master/contrib/completion/zsh/_docker-compose 
    echo Done
}

