#!/bin/bash

# set -e

echo "Inializing system setup..."

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

# Drop the previous setup if it exists
rm -rf ~/.local/wsl-setup

# Clone the repo for the latest changes
git clone https://github.com/robdearling/dotfiles ~/.local/wsl-setup >/dev/null
cd ~/.local/wsl-setup

#TODO: Remove this once the repo is stable
git checkout wsl-config
git pull >/dev/null

cd -

source ~/.local/wsl-setup/setup/gum.sh
source ~/.local/wsl-setup/setup/identification.sh
source ~/.local/wsl-setup/setup/shell.sh

# Remove the login information on shell startup
# touch $HOME/.hushlogin



