#!/usr/bin/env zsh

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        sudo apt-get install neovim=0.9.1 ripgrep=13.0.0
elif [[ "$OSTYPE" == "darwin"* ]]; then
        brew install neovim@0.9.1 ripgrep@13.0.0
elif [[ "$OSTYPE" == "msys" ]]; then
        echo "windows?!"
        scoop install neovim ripgrep
else
        echo "un-supported system"
	exit
fi

