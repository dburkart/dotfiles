#!/usr/bin/env bash

if [[ "$PLATFORM" != "macos" ]]; then
    echo "Skipping, since PLATFORM is not macOS."
    exit 0
fi

# Disable font smoothing
defaults -currentHost write -g AppleFontSmoothing -int 0
