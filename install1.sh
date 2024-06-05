#!/bin/env bash

# 简介
# 这个脚本是安装oh-my-zsh的先决条件，即安装zsh和相关包

export LANG=en_US.UTF-8;

# check the git
echo "检查是否安装git"
which git &> /dev/null
if [[ $? -ne 0 ]]; then
	echo "尚未安装git";
	echo "正在为你安装";
	echo "将要运行命令'sudo apt install git'";
	sudo apt install git;
else
	echo "你的git在 $(which git).";
	echo "";
fi;

# check the wget
echo "检查是否安装wget"
which git &> /dev/null
if [[ $? -ne 0 ]]; then
	echo "尚未安装wget.";
	echo "将要运行命令'sudo apt install wget'";
	sudo apt install wget;
else
	echo "你的wget在 $(which wget).";
	echo "";
fi;

# Install a zsh
echo "检查是否安装zsh"
which zsh &> /dev/null
if [[ $? -ne 0 ]]; then
	echo "尚未安装zsh.";
	echo "将要运行命令'sudo apt install zsh'";
	sudo apt install zsh;
	echo "正在把zsh设为默认shell";
	chsh -s "$(which zsh)";
	echo "请重新打开终端，然后你会看到zsh!";
else
	echo "你的zsh在路径 $(which zsh).";
	echo "";
fi;

# set the zsh as the default shell
if echo "$SHELL" | grep -q "zsh"; then
	echo "zsh已经是默认shell";
else
	echo 'zsh尚未成为默认shell';
	echo "正在把zsh设为默认shell";
	chsh -s "$(which zsh)";
	echo "请重新打开终端，然后你会看到zsh!";
fi;

# install oh-my-zsh
if echo "$SHELL" | grep -q "zsh"; then
	sh -c "$(wget -O- https://install.ohmyz.sh/)";
else 
	echo "你需要吧zsh设置为默认shell."
fi;
