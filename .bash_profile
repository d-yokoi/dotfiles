# .bash_profile
# User specific environment and startup programs

export PATH=/usr/local/bin:$PATH

# Terminal UI
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '

export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS='-giMR -j10 --no-init --quit-if-one-screen'
export EDITOR=vim

# environment variables for cocos2d-x
export COCOS2D_CONSOLE_ROOT=/
export NDK_ROOT=$HOME/AndroidDev/android-ndk-r13
export ANDROID_SDK_ROOT=$HOME/AndroidDev/android-sdk-macosx
export PATH=$ANDROID_SDK_ROOT:$PATH
export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH
export ANT_ROOT=/usr/local/bin

# Include .bashrc
[[ -e ~/.bash_profile.secret ]] && . ~/.bash_profile.secret
[[ -e ~/.bashrc ]] && . ~/.bashrc
[[ -e ~/.bashrc.secret ]] && . ~/.bashrc.secret
