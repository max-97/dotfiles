#!/bin/env zsh

### Varibales
dotfiles_dir=~/.dotfiles

### Create symlinks
ln -sf $dotfiles_dir/nvim/lua/custom ~/.config/nvim/lua/custom
