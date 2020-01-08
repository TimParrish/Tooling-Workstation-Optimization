#!/bin/sh

#always do this first
sudo apt-get update
sudo apt-get upgrade

#usefull for development of C programs
sudo apt-get install -y automake autoconf libtool build-essential git
sudo apt-get install -y valgrind lcov clang ctags meld

#install personal preferences
sudo apt-get install -y konsole gpaste tmux

#install vundle
if [ ! -d ~/.vim ]; then
    cd ~
    git clone git://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginINstal +qall
fi
