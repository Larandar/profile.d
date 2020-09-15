# Autocomplete for terraform and other bash completed CLI

which terraform >/dev/null && complete -o nospace -C `which terraform` terraform
which pipenv >/dev/null && eval "$(pipenv --completion)"

