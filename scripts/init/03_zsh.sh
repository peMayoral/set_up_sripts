#! /usr/bin/bash

#Set Zsh as shell
chsh -s $(which zsh)
sudo chsh -s $(which zsh)
#Install p10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZDOTDIR/themes/powerlevel10k
