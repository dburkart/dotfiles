#!/usr/bin/env bash 

if [[ ! -f ~/.vim/autoload/plug.vim ]]; then
    mkdir -p ~/.vim/autoload
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
