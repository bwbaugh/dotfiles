# OSX-only stuff. Abort if not OSX.
is_osx || return 1

test -f ~/.git-completion.bash && . $_

# Adapt the PATH environment variable for use with MacPorts.
export PATH=/Users/bwbaugh/.cabal/bin:/opt/local/bin:/opt/local/sbin:$PATH
