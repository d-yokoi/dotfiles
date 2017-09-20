if [ "$(uname)" = 'Darwin' ]; then
    # export LSCOLORS=xbfxcxdxbxegedabagacad
    alias ls='ls -GwF'
else
    eval `dircolors ~/.colorrc`
    alias ls='ls --color=auto'
fi

alias dl_feature_br='git branch | grep feature | xargs git branch -d'

[[ -e ~/.phpbrew/bashrc ]] && . ~/.phpbrew/bashrc
