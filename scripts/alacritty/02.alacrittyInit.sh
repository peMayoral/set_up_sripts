#alacritty deps
sudo apt install -y -qq \ 
git cmake pkg-config libfreetype6-dev libfontconfig1-dev \
libxcb-xfixes0-dev libxkbcommon-dev

cd ~
mkdir ~/temp1
cd ./temp1

#install rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -q -y
#clone source code
git clone https://github.com/alacritty/alacritty.git