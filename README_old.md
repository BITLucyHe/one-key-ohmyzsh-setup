
# 一键配置Oh My Zsh

## 简介

这是一个一键配置oh-my-zsh的项目，所谓的“一键”意思是只需要下载我们的仓库，利用极其短的时间，不需要其他教程，然后跟随我们运行脚本的提示就可以完成以下的配置:

|可获取的配置|
|---|
|zsh|
|oh-my-zsh 框架|
|自动补全插件|
|语法高亮插件|
|Powerline 字体|

### 项目的起因

项目设计的初衷旨在帮助您只需要花费极小的时间成本配置一个高效的终端助手，以此把您有限的时间投入到其它工作，提高工作效率，而不是像曾经的我们一样配置一个oh-my-zsh就耗费了一整个下午，我们希望您能够把时间花在其他对您而言更有意义或者说更重要的事情上，而不是这种配置工具的小事上。

## 使用方法

#### I.使用步骤
<ol>
<li>
下载仓库：您可以使用命令<code><br>git clone https://github.com/BITLucyHe/one-key-ohmyzsh-setup.git</code><br>也可以手动下载到您的本地
</li>
<li>
<code>cd one-key-ohmyzsh-setup</code>
</li>
<li><code>chmod +x install
</code></li>

<li>
接下来您只需执行命令<code>./install</code>（期望是1次，会因您的不同配置而有所不同），如果大于我们预估的次数，您也不必慌张，因为每个人的操作系统配置不一样，您只要直到出现类似以下界面即可。<img src="./assets/o3.png">
</li>
<li>
执行命令<code>./config</code>，这会配置我们推荐的oh-my-zsh插件和字体
</li>
</ol>

## 示例

<ol>
    <li>
    在安装了git的情况下，第一次执行命令<code>./install</code><img src="./assets/o1.png">
    </li>
    <li>
    在您输入密码后，您的<strong>终端会重启</strong>，不必惊慌，这是因为下载了zsh并且运行命令配置其为默认后，需要重启才能使得zsh为您的默认终端。
    <br>继续<code><./install></code>
    <img src="./assets/o2.png">这会下载git
    </li>
    <li>
    接着再次执行命令<code>./install</code>，会出现以下结果: 
    <img src="./assets/o3.png">您的oh-my-zsh框架配置完成！
    </li>
    <li>
    接着为您配置插件和字体，执行命令<code>./config</code>
    <img src="./assets/o4.png">
    <img src="./assets/o5.png">
    </li>
    <li>重新开启终端或者重启电脑<img src="./assets/o6.png">
    <strong>您的终端配置完成了！恭喜！</strong>
    </li>
</ol>

## 杂记

创建这个项目的目的一是为了方便配置oh-my-zsh，二是学了一点基础shell知识以后想练练手。可以预见，代码中还有很多粗陋之处，有很多东西处理得不是很好。欢迎提issue和pr！

## 作者和致谢

作者: [Lucy](https://github.com/BITLucyHe) 和 [potatotomatoes](https://github.com/potatotomatoes). 我们只是站在巨人的肩膀上，利用一些基础的shell知识，帮助大家配置oh-my-zsh罢了，oh-my-zsh不是我们构建的。如需详细了解oh-my-zsh，请看[官方网站](https://github.com/ohmyzsh/ohmyzsh)。

感谢以下开源项目:

字体: <https://github.com/powerline/fonts>

自动补全插件: <https://github.com/zsh-users/zsh-autosuggestions>

语法高亮插件: <https://github.com/zsh-users/zsh-syntax-highlighting>

## 联系方式

BITLucyHe的邮箱: <lucy@bit.edu.cn>

potatotomatoes的邮箱: <ynjztudou@outlook.com>
