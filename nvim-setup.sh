#!/bin/bash

set -e  # Exit on any error


#### building and installing neovim
echo "SETTING UP neovim"
sudo apt-get install -y ninja-build gettext cmake unzip curl
rm -rf neovim
git clone https://github.com/neovim/neovim
cd neovim && git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

#### installing nerdfont
echo "SETTING UP nerdfont"
sudo apt-get install -y ninja-build gettext cmake unzip curl
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf

#### installing ripgrep
echo "SETTING UP ripgrep"
sudo apt-get install -y ninja-build gettext cmake unzip curl
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
sudo dpkg -i ripgrep_13.0.0_amd64.deb

#### installing nvchad
echo "SETTING UP nvchad"
sudo apt-get install -y ninja-build gettext cmake unzip curl
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

#### adding custom config
echo "SETTING UP custom config"
sudo apt-get install -y ninja-build gettext cmake unzip curl
rm -rf ~/.config/nvim/lua/custom
git clone https://github.com/ferdinandhubbard981/custom.git ~/.config/nvim/lua/custom

# start nvim
nvim
