# Google Cloud CLI
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc

# Google SDK does not yet support python 3.9: https://issuetracker.google.com/issues/170716950
export CLOUDSDK_PYTHON=$(brew --prefix python@3.8)/bin/python3
