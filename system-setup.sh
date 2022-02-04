#!/bin/bash

#--------------------------------------------------------------------------------
# General installation server setup scripts.
# Jones/Bulley (2015-2019)
# jones-bulley.com
#--------------------------------------------------------------------------------

#--------------------------------------------------------------------------------
# Install dotfiles
#--------------------------------------------------------------------------------
echo "Copying dotfiles..."
for DOTFILE in .vimrc .profile .gitconfig .bash_sessions_disable .screenrc .pythonrc
do
	if [ ! -e ~/$DOTFILE ]
	then
        echo " - Installed $DOTFILE"
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
echo "Disabling sleep modes..."
sudo pmset -a sleep 0 displaysleep 0 disksleep 0 powernap 0 gpuswitch 0

#--------------------------------------------------------------------------------
# Install Homebrew
#--------------------------------------------------------------------------------

if ! which -s brew
then
    echo "Setting up Homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

#--------------------------------------------------------------------------------
# Install basic dependencies
#--------------------------------------------------------------------------------
echo "Install basic Homebrew packages..."
brew install python
brew install git bash bash-completion wget 
brew install libsndfile libsoundio portaudio sox
