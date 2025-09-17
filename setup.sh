#!/bin/bash

# Install zsh and zsh-autosuggestions zsh-syntax-highlighting
sudo apt install zsh zsh-autosuggestions zsh-syntax-highlighting

# Change default shell to zsh
sudo chsh -s $(which zsh)

# Download fira code font from https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/FiraCode.zip for all users
sudo apt install curl unzip wget fontconfig -y

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/FiraCode.zip
unzip FiraCode.zip -d FiraCode

sudo mkdir -p /usr/share/fonts/truetype/FiraCode
sudo cp FiraCode/*.ttf /usr/share/fonts/truetype/FiraCode/

sudo fc-cache -fv
rm -rf FiraCode FiraCode.zip

# Download starship prompt
sudo apt install starship -y

# move zshrc to home directory
cp zshrc ~/.zshrc

cp zshrc /root/.zshrc
cp ~/.config /root/.config -r

# Install some necessary packages for kali docker image
sudo apt install iputils-ping net-tools nmap ffuf seclists gobuster jq python3 openvpn