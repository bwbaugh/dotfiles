# Linux-only stuff. Abort if OSX.
is_ubuntu || return 1

# Local installs with `pip --user`.
export PATH=$HOME/.local/bin/:$PATH

# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
