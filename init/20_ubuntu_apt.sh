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
  apt-file
  aptitude
  arp-scan
  autofs
  bash-completion
  build-essential
  checkinstall
  cifs-utils
  dialog
  dnsutils
  emacs-nox
  etckeeper
  fio
  htop
  iftop
  iperf
  iperf3
  landscape-common
  lynx
  mtr-tiny
  ncdu
  nethogs
  nfs-common
  ntp
  pv
  python-dev
  screen
  smartmontools
  sysv-rc-conf
  tig
  tmux
  toilet
  tree
  vim
)

packages=($(setdiff "${packages[*]}" "$(dpkg --get-selections | grep -v deinstall | awk '{print $1}')"))

if (( ${#packages[@]} > 0 )); then
  e_header "Installing APT packages: ${packages[*]}"
  for package in "${packages[@]}"; do
    sudo apt-get -qq install "$package"
  done
fi
