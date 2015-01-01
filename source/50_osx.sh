# OSX-only stuff. Abort if not OSX.
is_osx || return 1

test -f ~/.git-completion.bash && . $_
