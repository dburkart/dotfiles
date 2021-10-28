#!/usr/bin/env bash

if [[ $PLATFORM != "freebsd" ]]; then
    echo "Skipping, since platform is not FreeBSD"
    exit 0
fi

stow -S freebsd-extras
