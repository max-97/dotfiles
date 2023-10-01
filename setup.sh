#!/bin/env bash

### Varibales
dotfiles_dir=~/.dotfiles

### Install packages and programs
sudo apt update

sudo apt install zsh tmux ripgrep -y

# Neovim 0.9
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mv ./nvim.appimage nvim
sudo mv ./nvim /usr/bin/nvim

# NvChad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

# Lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm -rf lazygit.tar.gz
rm -rf lazygit

### Create symlinks
ln -sf $dotfiles_dir/nvim/lua/custom ~/.config/nvim/lua/custom
ln -sf $dotfiles_dir/awesome ~/.config/awesome
ln -sf $dotfiles_dir/.zshrc ~/.zshrc
ln -sf $dotfiles_dir/.p10k.zsh ~/.p10k.zsh
ln -sf $dotfiles_dir/.tmux ~/.tmux
ln -sf $dotfiels_dir/tmux ~/.config/tmux

# ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
