is_ubuntu || return 1

readonly inconsolata="$HOME/.fonts/Inconsolata for Powerline.otf"
if [ ! -f "${inconsolata}" ]; then
    curl \
        --location \
        --show-error \
        --silent \
        --output "${inconsolata}" \
        'https://github.com/powerline/fonts/blob/master/Inconsolata/Inconsolata%20for%20Powerline.otf?raw=true'
fi
