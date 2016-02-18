# OSX-only stuff. Abort if not OSX.
is_osx || return 1

# Exit if Homebrew is not installed.
[[ ! "$(type -P brew)" ]] && e_error "Brew recipes need Homebrew to install." && return 1

# Homebrew recipes
recipes=(
  Caskroom/cask/osxfuse
  bison
  dialog
  imagemagick
  jq
  ncdu
  openssl
  pv
  ssh-copy-id
  sshfs
  tmux
  watch
  wget
)

brew_install_recipes
