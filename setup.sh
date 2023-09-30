#!/bin/env zsh

### Varibales
dotfiles_dir=~/.dotfiles

### Create symlinks
ln -sf $dotfiles_dir/nvim/lua/custom ~/.config/nvim/lua/custom
ln -sf $dotfiles_dir/awesome ~/.config/awesome
ln -sf $dotfiles_dir/.zshrc ~/.zshrc
ln -sf $dotfiles_dir/.p10k.zsh ~/.p10k.zsh
ln -sf $dotfiles_dir/.tmux ~/.tmux
