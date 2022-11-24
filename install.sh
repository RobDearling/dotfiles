#!/usr/bin/env bash

# Remove the login information on shell startup
touch $HOME/.hushlogin

# Update packages and upgrade
sudo apt update
sudo apt upgrade

# Intsall ZSH
echo "Installing zsh"
sudo apt install zsh

# Install Oh My ZSH
echo 'Installing oh-my-zsh'
## Remove any existing config for oh-my-zsh
rm -rf  $HOME/.oh-my-zsh

curl --location https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Setup global gitignore
ln -s $HOME/.dotfiles/shell/.global-gitignore $HOME/.global-gitignore
git config --global core.excludesfiles $HOME/.global-gitignore

#Symlink zsh prefs
rm $HOME/.zshrc
ln -s $HOME/.dotfiles/shell/.zshrc $HOME/.zshrc


# Fix missing font characters (see https://github.com/robbyrussell/oh-my-zsh/issues/1906)
cd ~/.oh-my-zsh/themes/
git checkout d6a36b1 agnoster.zsh-theme