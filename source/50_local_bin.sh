# Local installs with `pip --user` and stack.
pathaddstart "$HOME/.local/bin"

# Installed to home directory.
pathaddstart "$HOME/opt/bin"

# Personal bin.
# XXX(2016-01-02): This seems to be added to the path for the first,
#   say, tmux pane, by something else, but later panes don't have it.
#   Adding it here so that the directory is always on the path.
pathaddstart "$HOME/bin"
