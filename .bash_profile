# .bash_profile # User specific environment and startup programs

export PATH="/usr/local/bin:$PATH"

# Terminal UI
if which brew &> /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
  source "$(brew --prefix)/share/bash-completion/bash_completion"
fi

GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '

export LANG="en_US.UTF-8"
export PAGER=less
export LESSCHARSET='utf-8'
export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS='-giMR -j10 --no-init --quit-if-one-screen'
export EDITOR=vim

# Increase Bash history size. Allow 32³ entries; the default is 500.
export HISTSIZE='32768';
export HISTFILESIZE="${HISTSIZE}";
export HISTTIMEFORMAT="%Y/%m/%d %H:%M:%S:   "
# Omit duplicates and commands that begin with a space from history.
export HISTCONTROL='ignoreboth';

# environment variables for cocos2d-x
export COCOS2D_CONSOLE_ROOT=/
export NDK_ROOT=$HOME/AndroidDev/android-ndk-r13
export ANDROID_SDK_ROOT=$HOME/AndroidDev/android-sdk-macosx
export PATH=$ANDROID_SDK_ROOT:$PATH
export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH
export ANT_ROOT=/usr/local/bin

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# pip
export PATH="$HOME/.local/bin:$PATH"

# rbenv
eval "$(rbenv init -)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # this loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # this loads nvm bash_completion

# gvm
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

# GnuPG
export GPG_TTY=$(tty)

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
  colorflag="--color"
else # macOS `ls`
  colorflag="-G"
fi

alias ls="command ls -F ${colorflag}"
alias a="ls -a"
alias l="ls -l"
alias la="ls -la"

alias cp="cp -i"
alias mv="mv -i"

alias gcc="gcc -Wall -O2"

command -v vim > /dev/null && alias vi='vim'

# Shortcuts
alias x="cd -"
alias db="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias d="cd ~/dotfiles"
alias p="cd ~/projects"
alias g="git"

alias update='brew update; brew upgrade; brew cleanup;'

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
shopt -s autocd;

# Highlight section titles in manual pages.
export LESS_TERMCAP_md="$(tput setaf 136)";

[[ -e ~/.bash_profile.secret ]] && . ~/.bash_profile.secret
