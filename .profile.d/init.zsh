export PROFILE_DIR=$HOME/.profile.d

alias profile="git --git-dir=$PROFILE_DIR/.git --work-tree=$HOME"

# Install profile.d on first run
[[ ! -d $HOME/.profile.d/.git ]] && function () {
    git clone --bare https://github.com/Larandar/profile.d.git $PROFILE_DIR/.git
    profile config --local status.showUntrackedFiles no
    profile config --local alias.edit '!nvim $PROFILE_DIR'
    profile checkout
}

# Source all activated
for i in $PROFILE_DIR/modules/*/pre-init.zsh(N);  do source $i; done
for i in $PROFILE_DIR/modules/*/init.zsh(N);      do source $i; done
for i in $PROFILE_DIR/modules/*/post-init.zsh(N); do source $i; done

# Source all aliases
for i in $PROFILE_DIR/aliases/*.zsh(N); do source $i; done

# Utilities and custom functions
for i in $PROFILE_DIR/functions/*.zsh(N); do source $i; done

