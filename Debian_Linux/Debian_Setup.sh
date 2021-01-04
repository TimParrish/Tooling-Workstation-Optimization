#!/bin/sh

# always do this first
sudo apt-get update
sudo apt-get upgrade

# usefull for development of C programs
sudo apt-get install -y automake autoconf libtool build-essential git
sudo apt-get install -y valgrind lcov clang ctags meld curl

# install personal preferences
sudo apt-get install -y konsole gpaste tmux tree

# install vundle
if [ ! -d ~/.vim ]; then
    cd ~
    git clone git://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginINstal +qall
fi

# install nodejs view URL to update version in script if needed
# https://github.com/nodesource/distributions/blob/master/README.md
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

# install NodeMon after NodeJS is installed
sudo npm install -g nodemon
