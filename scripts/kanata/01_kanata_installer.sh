#!/usr/bin/zsh

# ==== Kanata set up files ====

# Create temp dir
echo "Creating temp dir"
cd ~
mkdir ~/tempKan
cd ~/tempKan


#Download Kanata, give run permissions and move to /usr/bin
echo "Downloading kanata"
curl --proto '=https' --tlsv1.2 -sSfLO  https://github.com/jtroo/kanata/releases/latest/download/kanata
echo "Assigning permissions"
chmod +x ./kanata
echo "Installing to /usr/bin/"
sudo mv -f ./kanata /usr/bin/

#Delete temp dir
echo "Cleaning temp directory"
cd ~
rm -rf ~/tempKan