#!/bin/bash -ex

if [[ "$PLATFORM" == "linux" ]]; then
    echo "Skipping miscellaneous macOS steps, since we're on Linux."
    exit 0
fi

# Disable font smoothing
defaults -currentHost write -g AppleFontSmoothing -int 0
