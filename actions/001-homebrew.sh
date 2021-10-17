#!/usr/bin/env bash 

if [[ "$PLATFORM" != "macos" ]]; then
    echo "Skipping, since PLATFORM is not macOS."
    exit 0
fi

if [[ ! -d ~/homebrew ]]; then
    pushd ~
    mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
    popd
    export PATH=~/homebrew/bin:$PATH
fi
