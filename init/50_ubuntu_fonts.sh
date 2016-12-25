is_ubuntu || return 1

readonly font_dir="$HOME/.fonts"
readonly inconsolata="${font_dir}/Inconsolata for Powerline.otf"
if [ ! -f "${inconsolata}" ]; then
    mkdir -p "${font_dir}"
    curl \
        --location \
        --show-error \
        --silent \
        --output "${inconsolata}" \
        'https://github.com/powerline/fonts/blob/master/Inconsolata/Inconsolata%20for%20Powerline.otf?raw=true'
fi
