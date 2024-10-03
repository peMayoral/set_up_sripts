sudo apt update

cd ~/alacritty

rustup override set stable
rustup update stable
cargo build --release

(infocmp alacritty || sudo tic -xe alacritty,alacritty-direct extra/alacritty.info) | -

sudo cp target/release/alacritty /usr/local/bin
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/alacritty 50
sudo mkdir -p /usr/local/share/man/man1
sudo mkdir -p /usr/local/share/man/man5

scdoc < extra/man/alacritty.1.scd | gzip -c | sudo tee /usr/local/share/man/man1/alacritty.1.gz > /dev/null
scdoc < extra/man/alacritty-msg.1.scd | gzip -c | sudo tee /usr/local/share/man/man1/alacritty-msg.1.gz > /dev/null
scdoc < extra/man/alacritty.5.scd | gzip -c | sudo tee /usr/local/share/man/man5/alacritty.5.gz > /dev/null
scdoc < extra/man/alacritty-bindings.5.scd | gzip -c | sudo tee /usr/local/share/man/man5/alacritty-bindings.5.gz > /dev/null
  

   
rustup self uninstall

cd ..
rm -rf alacritty

mkdir -p $XDG_CONFIG_HOME/alacritty

echo '[window]
decorations="None"
startup_mode="Fullscreen"
[font]
normal = { family = "EnvyCodeR Nerd Font Mono", style = "Regular"}
bold = { style = "Bold" }
italic = { style = "Italic" }
size = 13
builtin_box_drawing = false
[cursor]
style = { blinking = "On" }
blink_interval = 600
blink_timeout = 0
unfocused_hollow = true' > $XDG_CONFIG_HOME/alacritty/alacritty.toml


mkdir -p ${ZDOTDIR:-~}/.zsh_functions
cp extra/completions/_alacritty ${ZDOTDIR:-~}/.zsh_functions/_alacritty
echo 'fpath+=${ZDOTDIR:-~}/.zsh_functions' >> ${ZDOTDIR:-~}/.zshrc
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/alacritty
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "--working-directory"