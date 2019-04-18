#!/bin/bash -ex

if [ $SHELL != '/bin/zsh' ]; then
    /usr/bin/chsh -s /bin/zsh
fi
