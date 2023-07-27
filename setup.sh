#!/usr/bin/env zsh

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        sudo apt-get install ripgrep
elif [[ "$OSTYPE" == "darwin"* ]]; then
        brew install ripgrep
elif [[ "$OSTYPE" == "msys" ]]; then
        scoop install ripgrep
else
        echo "un-supported system"
	exit
fi

