# OSX-only stuff. Abort if not OSX.
is_osx || return 1

# Exit if Homebrew is not installed.
[[ ! "$(type -P brew)" ]] && e_error "Brew recipes need Homebrew to install." && return 1

# Homebrew recipes
recipes=(
  Caskroom/cask/unetbootin
  arduino-cli
  bison
  dialog
  emacs
  git
  gron
  homebrew/dupes/rsync
  htop-osx
  imagemagick
  iperf
  iperf3
  jq
  mtr
  ncdu
  openssl
  pre-commit
  pv
  rename
  smartmontools
  ssh-copy-id
  sshfs
  tig
  tmux
  truncate
  watch
  wget
)

brew_install_recipes
