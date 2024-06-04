#!/bin/bash
# Run this script from the repo root to set configurations

# Define config directory
export XDG_CONFIG_HOME="$HOME"/.config

# Symbolic links
ln -sf "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim
ln -sf "$PWD/tmux" "$XDG_CONFIG_HOME"/tmux

# Do a user install
# TODO: Should probs fetch this every install
mkdir -p $HOME/.local/share/fonts
cp -r $PWD/fonts/JetBrainsMono* $HOME/.local/share/fonts

# Install required packages
sudo apt install ripgrep gh
sudo apt install gcc g++ unzip

# /usr/bin/python3 -m pip install pynvim
