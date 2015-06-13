# Linux-only stuff. Abort if OSX.
is_ubuntu || return 1

# Local installs with `pip --user`.
export PATH=$HOME/.local/bin/:$PATH
