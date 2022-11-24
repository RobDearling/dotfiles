#!/usr/bin/env bash

# Remove the login information on shell startup
touch $HOME/.hushlogin

# Update packages and upgrade
sudo apt update
sudo apt upgrade

# Intsall ZSH
echo "Installing zsh, git & htop"
sudo apt install -y git zsh

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

# Setup zlocation
cd ~/.dotfiles/shell
chmod +x z.sh


# Install wget
sudo apt install -y wget

# Install .NET 6
sudo apt install -y dotnet6 aspnetcore-runtime-6.0