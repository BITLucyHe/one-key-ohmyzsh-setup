#!/bin/env bash

# A Little ReadMe
# This script is for the prerequisite equippment of oh-my-zsh.


# check the git
echo "Check the location of the git"
which git &> /dev/null
if [[ $? -ne 0 ]]; then
	echo "You need to install a git.";
	echo "Please run the command 'sudo apt install git'.";
else
	echo "Your git is in $(which git).";
	echo "";
fi;

# check the wget
echo "Check the location of the wget"
which git &> /dev/null
if [[ $? -ne 0 ]]; then
	echo "You need to install a wget.";
	echo "Please run the command 'sudo apt install wget'.";
else
	echo "Your wget is in $(which wget).";
	echo "";
fi;


# Install a zsh
echo "Check the location of the zsh"
which zsh &> /dev/null
if [[ $? -ne 0 ]]; then
	echo "You need to install a zsh.";
	echo "Please run the command 'sudo apt install zsh' to install a zsh.";
	echo 'And run the command "chsh -s $(which zsh)" to set Zsh as the default Shell.';
	echo "Then you need to reboot your computer."
else
	echo "Your zsh is in $(which zsh).";
	echo "";
fi;


# check the zsh 
shell=$(echo $SHELL)
if echo $SHELL | grep -q "zsh"; then
	echo "Zsh has already been the defalut Shell.";
else
	echo 'run the command "chsh -s $(which zsh)" to set Zsh as the default Shell.';
	echo 'Remember that you need to reboot the terminal if you reset the default shell.';
	
fi;



