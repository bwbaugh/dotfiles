PIP_REQUIRE_VIRTUALENV=false pip install --user powerline-status psutil

readonly conf_file="$HOME/.tmux-powerline.conf"

readonly py27_osx_powerline="$HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/tmux/powerline.conf"
if [ -f "${py27_osx_powerline}" ] ; then
    ln -s -f "${py27_osx_powerline}" "${conf_file}"
fi
readonly py27_linux_powerline="$HOME/.local/lib/python2.7/site-packages/powerline/bindings/tmux/powerline.conf"
if [ -f "${py27_linux_powerline}" ] ; then
    ln -s -f "${py27_linux_powerline}" "${conf_file}"
fi
