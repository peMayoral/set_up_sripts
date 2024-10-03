#! /usr/bin/bash

echo "Setting system up"
sudo apt update && sudo apt upgrade -y

# APT Installs
./init/01_installs.sh

# Font install. Envy Code R
./init/02_font.sh


# Set up global shell env
sudo cp -f ./../configs/shells/bash/etc/profile /etc/profile
sudo mkdir -p /etc/zsh/
sudo cp -f ./../configs/shells/zsh/etc/zprofile /etc/zsh/zprofile
source /etc/profile
mkdir -p $XDG_CONFIG_HOME $XDG_DATA_HOME $ZDOTDIR
touch $HISTFILE

#ZSH Set Up
./init/03_zsh.sh

#Tmux plugin manager
git clone --depth=1 https://github.com/tmux-plugins/tpm $XDG_CONFIG_HOME/tmux/plugins/tpm

cd ..
stow -d ./dotfiles -t ~ .


