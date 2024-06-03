#!/bin/bash

# Run this script from the repo root to set configurations

# Define config directory
export XDG_CONFIG_HOME="$HOME"/.config

# Symbolic links
ln -sf "$PWD/.tmux.conf" "$HOME"/.tmux.conf
ln -sf "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim

# Do a user install
# TODO: Should probs fetch this every install
mkdir -p $HOME/.local/share/fonts
cp $PWD/fonts/JetBrainsMono* $HOME/.local/share/fonts

# apt packages
#nvim
sudo apt install ripgrep gh
sudo apt install gcc g++ unzip

# /usr/bin/python3 -m pip install pynvim
