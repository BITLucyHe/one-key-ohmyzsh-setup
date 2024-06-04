#!/bin/sh

echo "安装powerline字体"
echo "字体项目原地址：https://github.com/powerline/fonts"
chmod +x fonts/install.sh && ./fonts/install.sh 

echo "安装自动补全插件"
echo "项目原地址：https://github.com/zsh-users/zsh-autosuggestions"
cp -R zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions 

echo "安装语法高亮插件"
echo "项目原地址：https://github.com/zsh-users/zsh-syntax-highlighting"
cp -R zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting 