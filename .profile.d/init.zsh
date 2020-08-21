export PROFILE_DIR=$HOME/.profile.d

alias profile="git --git-dir=$PROFILE_DIR/.git --work-tree=$HOME"

[[ ! -d $HOME/.profile.d/.git ]] && function () {
    git clone --bare git@gitlab.com:larandar/.profile.d.git $PROFILE_DIR/.git
    profile config --local status.showUntrackedFiles no
    profile checkout
}

# Source all activated
for i in $PROFILE_DIR/modules/*/pre-init.zsh(N);  do source $i; done
for i in $PROFILE_DIR/modules/*/init.zsh(N);      do source $i; done
for i in $PROFILE_DIR/modules/*/post-init.zsh(N); do source $i; done

# Source all aliases
for i in $PROFILE_DIR/aliases/*.zsh; do source $i; done

