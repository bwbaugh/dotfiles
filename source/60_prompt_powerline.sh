hash powerline-daemon 2> /dev/null || return 1

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1

readonly py27_osx_powerline="$HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh"
if [ -f "${py27_osx_powerline}" ] ; then
    source "${py27_osx_powerline}"
fi
readonly py27_linux_powerline="$HOME/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh"
if [ -f "${py27_linux_powerline}" ] ; then
    source "${py27_linux_powerline}"
fi
