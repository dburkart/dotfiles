#!/usr/bin/env bash

# If we're on fedora, we don't have chsh by default
if [[ $FLAVOR == 'redhat' ]]; then
    $INSTALL_CMD util-linux-user
fi

if [ $SHELL != '/bin/zsh' ]; then
    if ! command -v zsh &> /dev/null
    then
	$INSTALL_CMD zsh
    fi

    /usr/bin/chsh -s /bin/zsh
fi
