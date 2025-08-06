#!/usr/bin/env bash

export PATH=~/homebrew/bin:$PATH

stow -S zsh
stow -S nvim
stow -S tmux

mkdir -p ~/bin
stow -S bin
