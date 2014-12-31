__git_ps1_helper () {
    local g="$(git rev-parse --git-dir 2>/dev/null)"
    if [ -n "$g" ]; then
        local r
        local b
        if [ -d "$g/../.dotest" ]; then
            r="|AM/REBASE"
            b="$(git symbolic-ref HEAD 2>/dev/null)"
        elif [ -f "$g/.dotest-merge/interactive" ]; then
            r="|REBASE-i"
            b="$(cat $g/.dotest-merge/head-name)"
        elif [ -d "$g/.dotest-merge" ]; then
            r="|REBASE-m"
            b="$(cat $g/.dotest-merge/head-name)"
        elif [ -f "$g/MERGE_HEAD" ]; then
            r="|MERGING"
            b="$(git symbolic-ref HEAD 2>/dev/null)"
        else
            if [ -f $g/BISECT_LOG ]; then
                r="|BISECTING"
            fi
            if ! b="$(git symbolic-ref HEAD 2>/dev/null)"; then
                b="$(cut -c1-7 $g/HEAD)..."
            fi
        fi

        if [ -n "$1" ]; then
            printf "$1" "${b##refs/heads/}$r"
        else
            printf " (%s)" "${b##refs/heads/}$r"
        fi
    fi
}

PS1='\[\e[1;34m\]\u\[\e[0;39m\]@\[\e[1;32m\]\h\[\e[0;39m\]:\[\e[1;33m\]\w\[\e[0;39m\]$(__git_ps1_helper " \[\e[1;36m\](%s)\[\e[0;39m\] ")\$ '
