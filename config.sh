#!/bin/env zsh
source ~/.zshrc

os=$(uname)
file="$HOME/.zshrc"

# echo "安装powerline字体..."
# echo "字体项目原地址:https://github.com/powerline/fonts"
chmod +x ./fonts/install.sh
./fonts/install.sh 
# echo "完成"

# echo ""
# echo "安装自动补全插件..."
# echo "项目原地址:https://github.com/zsh-users/zsh-autosuggestions"
cp -R ./zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions 
# echo "完成"

# echo ""
# echo "安装语法高亮插件..."
# echo "项目原地址:https://github.com/zsh-users/zsh-syntax-highlighting"
cp -R ./zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting 
# echo "完成"

# echo ""
# echo "正在将插件写入配置文件中..."
# if [[ $os = "Darwin" ]]; then
    # sed -i '' 's/^plugins=(.*$/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/' $file
    # echo "完成"
    # echo "更多插件及使用方法请访问:https://github.com/ohmyzsh/ohmyzsh?tab=readme-ov-file#plugins"
# elif [[ $os = "Linux" ]]; then 
    sed -i 's/^plugins=(.*$/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/' $file
    # echo "完成"
    echo "更多插件及使用方法请访问:https://github.com/ohmyzsh/ohmyzsh?tab=readme-ov-file#plugins"
# fi

# echo ""
# echo "开始更新zsh配置文件..."
# echo "关于zsh的主题,我们其实推荐“agnoster”,但是换不换由你自己来决定。"
# echo "你可以访问官网查看效果图:https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#agnoster"
# echo "当然,你往后可以随时更换主题。方法在:https://github.com/ohmyzsh/ohmyzsh?tab=readme-ov-file#selecting-a-theme"
# echo "你想现在更换吗? (y/n): "
# read user_input

# if [[ $os = "Darwin" ]]; then
#     if [[ $user_input = "Y" || $user_input = "y" || $user_input = "yes" ]]; then
#         sed -i '' 's/^ZSH_THEME=".*$/ZSH_THEME="agnoster"/' $file
#         soure $file
#         echo "已更换主题为“agnoster”"
#     else 
#         echo "没有更换主题"
#     fi
# elif [[ $os = "Linux" ]]; then 
    # if [[ $user_input = "Y" || $user_input = "y" || $user_input = "yes" ]]; then
        sed -i 's/^ZSH_THEME=".*$/ZSH_THEME="agnoster"/' $file
        echo "已更换主题为“agnoster”"
        source $file
    # else 
        # echo "没有更换主题"
    # fi
# fi

gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default|awk -F"'" '{print $2}')/ use-system-font false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default|awk -F"'" '{print $2}')/ font 'DejaVu Sans Mono for Powerline 12'

source ~/.zshrc

echo ""
# echo "提醒："
# echo "大多数oh-my-zsh的主题依赖于Powerline或者Nerd字体"
# echo "这里我已经把powerline字体安装好了,"
# echo "并把“DejaVu Sans Mono for Powerline”设置为了你的终端字体"
# echo "你可以随时在终端的偏好设置中更改"
echo "完成！请关闭并重启终端"
# echo "然后,你应该可以愉快地使用终端了!"
# echo "(如果重启终端没有的话,请重启电脑)"