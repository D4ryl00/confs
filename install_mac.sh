#!/bin/sh

#init brew directory
rm -rf $HOME/.brew && git clone --depth=1 https://github.com/Homebrew/brew $HOME/.brew && export PATH=$HOME/.brew/bin:$PATH && brew update && echo "export PATH=$HOME/.brew/bin:$PATH" >> ~/.zshrc

#vim8
brew install vim cscope
pip3 install neovim

#docker
brew install docker docker-machine
brew services start docker-machine
