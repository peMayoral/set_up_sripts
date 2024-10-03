#!/usr/bin/zsh

# = Set up config files =


cd ./../../configs/progs/kanata/

echo "Creating cfg directory"
sudo mkdir -p /etc/kanata/

# systemd service creation
echo "Installing cfg files"
sudo cp -f ./caps2esc.kbd /etc/kanata/caps2esc.kbd
sudo chmod +rx /etc/kanata/caps2esc.kbd
sudo install -m 644 ./kanata.service /etc/systemd/system/kanata.service

echo "Restarting kanata"
sudo systemctl start kanata
sudo systemctl enable kanata
