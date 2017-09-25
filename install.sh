#!/usr/bin/env bash

for f in .??*
do
  [[ "$f" == ".git" ]] && continue
  [[ "$f" == ".DS_Store" ]] && continue
  
  ln -fnsv ~/dotfiles/"$f" ~/"$f"
done
