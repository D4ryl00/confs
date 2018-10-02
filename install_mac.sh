#!/bin/sh

#init brew directory
rm -rf $HOME/.brew && git clone --depth=1 https://github.com/Homebrew/brew $HOME/.brew && export PATH=$HOME/.brew/bin:$PATH && brew update && echo "export PATH=$HOME/.brew/bin:$PATH" >> ~/.zshrc

#vim8
#brew install vim cscope
brew install macvim cscope bear
pip3 install neovim
ls -s /Users/rbarbero/.brew/Cellar/macvim/8.1-151/MacVim.app/Contents/bin/vim /Users/rbarbero/.brew/bin

#docker
brew install docker docker-machine
brew services start docker-machine
