# Linux-only stuff. Abort if OSX.
is_ubuntu || return 1

# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

case $(tty) in
/dev/tty[0-9]*)
  TERM=linux
  ;;
*)
  # Ensure tmux works with 256 colors
  TERM=screen-256color
  ;;
esac
