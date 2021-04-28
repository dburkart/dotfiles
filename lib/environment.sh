#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    export PLATFORM=linux
    export INSTALL_CMD=sudo apt
elif [[ "$OSTYPE" == "darwin"* ]]; then
    export PLATFORM=macos
    export INSTALL_CMD=~/homebrew/bin/brew
else
    export PLATFORM=unknown
fi
