#!/bin/bash

sudo apt update -y
sudo apt upgrade -y
sudo apt install -y curl git unzip

# Backup existing .bashrc if it exists
[ -f ~/.bashrc ] && mv ~/.bashrc ~/.bashrc.bak
cp ~/.local/wsl-setup/configs/bashrc ~/.bashrc

[ -f ~/.inputrc ] && mv ~/.inputrc ~/.inputrc.bak
cp ~/.local/wsl-setup/defaults/bash/inputrc ~/.inputrc

source ~/.local/wsl-setup/setup/apps/btop.sh
source ~/.local/wsl-setup/setup/apps/gh-cli.sh
source ~/.local/wsl-setup/setup/apps/lazydocker.sh
source ~/.local/wsl-setup/setup/apps/lazygit.sh
source ~/.local/wsl-setup/setup/apps/zellij.sh
source ~/.local/wsl-setup/setup/apps/terminal.sh
source ~/.local/wsl-setup/setup/apps/libraries.sh
source ~/.local/wsl-setup/setup/apps/mise.sh
source ~/.local/wsl-setup/setup/apps/nvim.sh
source ~/.local/wsl-setup/setup/configure-git.sh

# Configure Zellij on startup
echo 'eval "$(zellij setup --generate-auto-start bash)"' >> ~/.bashrc
