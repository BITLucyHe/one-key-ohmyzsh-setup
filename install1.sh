#!/bin/env bash

# A Little ReadMe
# This script is for the prerequisite equippment of oh-my-zsh.


# check the git
echo "Check the location of the git"
which git &> /dev/null
if [[ $? -ne 0 ]]; then
	echo "You need to install a git.";
	echo "Please run the command 'sudo apt install git.'";
else
	echo "Your git is in $(which git).";
fi;

# check the wget
echo "Check the location of the wget"
which git &> /dev/null
if [[ $? -ne 0 ]]; then
	echo "You need to install a wget.";
	echo "Please run the command 'sudo apt install wget.'";
else
	echo "Your wget is in $(which wget).";
fi;


# Install a zsh
echo "Check the location of the zsh"
which zsh &> /dev/null
if [[ $? -ne 0 ]]; then
	echo "You need to install a zsh.";
	echo "Please run the command 'sudo apt install zsh.'";
	echo "Then you need to reboot your computer."
else
	echo "Your zsh is in $(which zsh).";
fi;
	

