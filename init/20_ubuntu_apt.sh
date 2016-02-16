# Ubuntu-only stuff. Abort if not Ubuntu.
is_ubuntu || return 1

# Update APT.
e_header "Updating APT"
sudo apt-get -qq update
sudo apt-get -qq dist-upgrade

# Install APT packages.
# vim-nox for Python support on Raspberry Pi. Consider adding an
#   `is_raspberry` check.
packages=(
  aptitude
  bash-completion
  build-essential
  dialog
  landscape-common
  lynx
  mtr-tiny
  ncdu
  nethogs
  ntp
  pv
  python-dev
  screen
  sysv-rc-conf
  tig
  tmux
  toilet
  vim
)

packages=($(setdiff "${packages[*]}" "$(dpkg --get-selections | grep -v deinstall | awk '{print $1}')"))

if (( ${#packages[@]} > 0 )); then
  e_header "Installing APT packages: ${packages[*]}"
  for package in "${packages[@]}"; do
    sudo apt-get -qq install "$package"
  done
fi
