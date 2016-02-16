# OSX-only stuff. Abort if not OSX.
is_osx || return 1

readonly inconsolata="$HOME/Library/Fonts/Inconsolata for Powerline.otf"
if [ ! -f "${inconsolata}" ]; then
    curl \
        --location \
        --show-error \
        --silent \
        --output "${inconsolata}" \
        'https://github.com/powerline/fonts/blob/master/Inconsolata/Inconsolata%20for%20Powerline.otf?raw=true'
fi
