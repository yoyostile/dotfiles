#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin main;

#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#brew bundle;
#bash ./.macos;

#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#curl -L https://bit.ly/janus-bootstrap | bash

ln -s $(pwd)/.config/.starship.toml ~/.config/starship.toml

function doIt() {
  rsync --exclude ".git/" \
    --exclude ".DS_Store" \
    --exclude ".osx" \
    --exclude ".macos" \
    --exclude ".privates.example" \
    --exclude "bootstrap.sh" \
    --exclude "brew.sh" \
    --exclude "init" \
    --exclude "README.md" \
    --exclude "LICENSE-MIT.txt" \
    --exclude "Brewfile" \
    --exclude "configs" \
    -avh --no-perms . ~;
  /usr/bin/env zsh -c "source ~/.zshrc";
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt;
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
  echo "";
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt;
  fi;
fi;
unset doIt;
