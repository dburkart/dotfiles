#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    export PLATFORM=linux
    export FLAVOR=unknown
    if command -v apt &> /dev/null
    then
        export FLAVOR="debian"
        export INSTALL_CMD="sudo apt"
    elif command -v dnf &> /dev/null
    then
	export FLAVOR="redhat"
	export INSTALL_CMD="sudo dnf -y"
    fi
elif [[ "$OSTYPE" == "freebsd"* ]]; then
    export PLATFORM=freebsd
    export FLAVOR=freebsd
    export INSTALL_CMD="sudo pkg"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    export PLATFORM=macos
    export FLAVOR=macos
    export INSTALL_CMD=~/homebrew/bin/brew
else
    export PLATFORM=unknown
fi

echo Setting Platform to $PLATFORM
echo Setting package manager to $INSTALL_CMD
