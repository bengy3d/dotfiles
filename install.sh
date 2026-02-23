#!/bin/bash

if ! command -v brew &>/dev/null; then
    echo "Please install homebrew"
    exit 1
fi

brew install nvim htop tmux fzf ripgrep

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

mkdir -p $HOME/.config

ln -s $SCRIPT_DIR/config/nvim $HOME/.config/nvim

mkdir -p $HOME/.local/bin

ln -s $SCRIPT_DIR/local/bin/tmux-sessionizer $HOME/.local/bin/tmux-sessionizer

mkdir -p $HOME/Work/Notes
