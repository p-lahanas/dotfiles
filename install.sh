#!/bin/bash
# Run this script from the repo root to set configurations

# Define config directory
export XDG_CONFIG_HOME="$HOME"/.config

# Function to create symbolic links
create_symlink() {
    local src=$1
    local target=$2
    
    # Check if the target directory or symlink exists and remove it
    if [ -e "$target" ] || [ -L "$target" ]; then
        rm -rf "$target"
    fi

    # Create the symbolic link
    ln -sf "$src" "$target"
}

# Create symbolic links
create_symlink "$PWD/helix" "$XDG_CONFIG_HOME/helix"
create_symlink "$PWD/tmux" "$XDG_CONFIG_HOME/tmux"

# Do a user install
# TODO: Should probs fetch this every install
mkdir -p $HOME/.local/share/fonts
cp -r $PWD/fonts/JetBrainsMono* $HOME/.local/share/fonts
