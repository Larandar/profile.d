export CFLAGS="-I$(brew --prefix)/include $CFGLAGS"
export LDFLAGS="-L$(brew --prefix)/lib $LDFLAGS"

export PATH="$(brew --prefix)/opt/python/libexec/bin:$PATH"

