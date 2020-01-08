#!/bin/sh

#This is a script to do some setup and optimizations for Mac OsX when
#a new install of the operating system was just done

#install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Update Homebrew
brew update

#install GitHub
brew install git

#set a custom lock screen message
sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText 'Vader Lives'

#add filepath to finder windows
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES; killall Finder

#improvements to the dock
defaults write com.apple.dock autohide-time-modifier -float 0.12;killall Dock
defaults write com.apple.dock autohide-time-modifier -int 0;killall Dock