#!/bin/bash -ex

if [ ! -d ~/homebrew ]; then
    pushd ~
    mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
    popd
fi
