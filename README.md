# 一键配置oh my zsh

## 说明

- 本项目根据ubuntu环境配置,其他环境可能并不适用

- omz项目地址：[oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)

## 预期效果

- 把ubuntu默认终端改为zsh

- 安装oh my zsh

- 把omz的默认主题改为[agnoster](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#agnoster)

- 安装[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)插件

- 安装[zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)插件

- 安装powerline字体并把“DejaVu Sans Mono for Powerline”设置为默认字体（[为什么需要安装powerline字体？](https://github.com/ohmyzsh/ohmyzsh?tab=readme-ov-file#themes)）

## 使用方法

### 先决条件

```shell
sudo apt install zsh
chsh -s $(which zsh)
```

上面两行代码下载了zsh并且把zsh设置为默认终端

### 克隆仓库,安装omz

```shell
git clone https://github.com/BITLucyHe/one-key-ohmyzsh-setup.git
cd one-key-ohmyzsh-setup
sh install.sh
```

### 配置插件和字体

```shell
sh config.sh
```