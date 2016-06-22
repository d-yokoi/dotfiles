if [ "$(uname)" = 'Darwin' ]; then
    # export LSCOLORS=xbfxcxdxbxegedabagacad
    alias ls='ls -GwF'
else
    eval `dircolors ~/.colorrc`
    alias ls='ls --color=auto'
fi

[[ -e ~/.phpbrew/bashrc ]] && . ~/.phpbrew/bashrc

export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS='-R'
