#! /usr/bin/bash

#Go to a temp dir
echo "Creating temp directory"
cd ~
mkdir ~/temp0
cd ~/temp0


#Install font

echo "Installing nerd font"
(curl --proto '=https' --tlsv1.2 -sSfLO https://github.com/ryanoasis/nerd-fonts/releases/latest/download/EnvyCodeR.zip && \
unzip EnvyCodeR.zip -d EnvyCodeR) && \
(rm -rf ./EnvyCodeR.zip ./EnvyCodeR/LICENCE.md ./EnvyCodeR/README.md && \
sudo mv ./EnvyCodeR /usr/share/fonts)

#Cleanup
echo "Cleaning..."
cd ~
rm -rf ~/temp0