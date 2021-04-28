#!/bin/bash -ex

if [[ "$PLATFORM" == "linux" ]]; then
    echo "Skipping homebrew, since we're on linux."
    exit 0
fi

if [[ ! -d ~/homebrew ]]; then
    pushd ~
    mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
    popd
fi
