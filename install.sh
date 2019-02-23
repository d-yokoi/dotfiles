#!/usr/bin/env bash

for f in .??*
do
  [[ "$f" == ".git" ]] && continue
  [[ "$f" == ".DS_Store" ]] && continue
  
  ln -fnsv ~/dotfiles/"$f" ~/"$f"
done

# Install gvm: https://github.com/moovweb/gvm
command -v gvm > /dev/null || bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
