#!/usr/bin/bash

echo "Installing necessary programs and dependencies"

function installApt {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

installApt zsh
installApt zsh-syntax-highlighting
installApt python3
installApt curl
installApt flatpak
installApt gzip
installApt git
installApt tmux
installApt python3-neovim
installApt scdoc
installApt gcc
installApt ninja-build
installApt gettext
installApt unzip
installApt ripgrep
installApt python3.12-venv
installApt code
installApt stow