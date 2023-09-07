# OSX-only stuff. Abort if not OSX.
is_osx || return 1

# Exit if Homebrew is not installed.
[[ ! "$(type -P brew)" ]] && e_error "Brew recipes need Homebrew to install." && return 1

# Homebrew recipes
recipes=(
  Caskroom/cask/karabiner-elements
  Caskroom/cask/unetbootin
  arduino-cli
  bison
  dialog
  emacs
  f3
  git
  git-lfs
  gron
  haskell-stack
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
  rectangle
  rename
  smartmontools
  ssh-copy-id
  sshfs
  tig
  tmux
  truncate
  twitchdev/twitch/twitch-cli
  vlc
  watch
  wget
)

brew_install_recipes
