
# PLATFORM DEPENDANT IMPORTS
case `uname -s` in
    Darwin*)    for i in `dirname ${(%):-%N}`/post-init/{macos,bsd,unix}.*.zsh(N); do source $i; done;;
    Linux*)     for i in `dirname ${(%):-%N}`/post-init/{linux,unix}.*.zsh(N); do source $i; done;;
    *)          echo "The platform '$(uname -s)' is not handled during inialization."
esac

case `which powershell.exe` in
    *WINDOWS/System32*) for i in `dirname ${(%):-%N}`/post-init/wsl.*.zsh(N); do source $i; done;;
esac

