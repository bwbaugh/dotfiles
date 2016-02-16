PIP_REQUIRE_VIRTUALENV=false pip install --user powerline-status psutil

readonly conf_file="$HOME/.tmux-powerline.conf"

readonly py27_powerline="$HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/tmux/powerline.conf"
if [ -f "${py27_powerline}" ] ; then
    ln -s -f "${py27_powerline}" "${conf_file}"
fi
