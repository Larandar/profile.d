# If zim is not installed then install it
[[ ! -d $HOME/.zim ]] && function () {
    curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
    # Also we need to revert .zshrc and .zimrc to what is in the repository
    profile checkout --force $HOME/.{zim,zsh}rc
}

