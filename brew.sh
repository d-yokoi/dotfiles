brew update

brew upgrade

brew cleanup

brew bundle

# Switch to using brew-installed bash as default shell
if ! grep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi

# Install key bindings and completion for fzf
[ -f ~/.fzf.bash ] || $(brew prefix)/opt/fzf/install