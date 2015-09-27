#!/bin/bash

#--------------------------------------------------------------------------------
# General installation server setup scripts.
# Jones/Bulley (2015)
# jones-bulley.com
#--------------------------------------------------------------------------------

#--------------------------------------------------------------------------------
# Install dotfiles
#--------------------------------------------------------------------------------
echo "Copying dotfiles..."
for DOTFILE in .[a-z]*
do
	if [ ! -e ~/$DOTFILE ]
	then
		cp $DOTFILE ~
	fi
done

#--------------------------------------------------------------------------------
# Disable screensaver
#--------------------------------------------------------------------------------
echo "Setting up system config..."
defaults -currentHost write com.apple.screensaver idleTime 0

#--------------------------------------------------------------------------------
# Turn off all sleep modes
#--------------------------------------------------------------------------------
pmset sleep 0
pmset displaysleep 0
pmset disksleep 0

#--------------------------------------------------------------------------------
# Install Homebrew
#--------------------------------------------------------------------------------
echo "Setting up Homebrew..."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#--------------------------------------------------------------------------------
# Install basic dependencies
#--------------------------------------------------------------------------------
echo "Install basic Homebrew packages..."
brew install python
brew install wget
brew install autoconf
brew install automake
brew linkapps

