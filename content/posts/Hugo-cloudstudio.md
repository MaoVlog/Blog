---
title: "用cloud studio来搭建Hugo"
date: 2020-04-15T14:53:46+08:00
description: Hugo通过cloud studio部署写博客
categories: 网络应用
tags: [Hugo,cloudstudio]
---
![code](/images/code.jpg)

## 前言

我的Hogo博客托管在[Coding](https://coding.net)，相对来说比在[Github](https://github.com)速度快很多。

Hugo博客跟Hexo差不多先在本地部署好，生成静态文件然后推送到仓库。

基本上都是在本地写文章，有时候觉的文章数据在本地，换了部署环境就不能同步保存了。

百度找到一篇文章，在Ubuntu 18.04系统中安装和使用Hugo的方法。

这样就能通过[Cloud studio](http://cloudstudio.net)部署Hogo环境，就能实现在云端写文章了。

## 部署

首先在Coding的[Cloud studio](http://cloudstudio.net)创建工作空间，预置环境选择：Ubuntu 18.04

然后从apt存储库安装Hugo在Ubuntu 18.04 LTS系统中更新你的系统apt索引并安装Hugo.

`
$sudo apt-get update 
$ sudo apt-get install hugo
`

你可以在安装后确认hugo二进制文件的位置

`
$ which hugo
`

/usr/bin/hugo

从.deb包安装Hugo在Ubuntu 18.04 LTS系统中

首先，从github hugo页面下载最新版本，当前版本是v0.69.2，选择与你的CPU架构匹配的版本：


`
wget https://github.com/gohugoio/hugo/releases/download/v0.69.2/hugo_0.54.0_Linux-64bit.deb
`

GitHub可能速度比较慢下面我提供了我国内服务器下载地址：

`
wget http://d.chenplus.com/download/hugo_0.69.2_Linux-64bit.deb
`

在运行的时候下载命令的时候可能报错。wget: command not found！主要是因为你的系统太干净了，没有安装下载命令的控制器，我们给Ubuntu系统安装个下载命令器即可。

`
apt-get install -y wget
`

然后使用以下命令安装包：

``` 
$ sudo dpkg -i hugo_0.69.2_Linux-64bit.deb

Selecting previously unselected package hugo.

(Reading database … 187292 files and directories currently installed.)

Preparing to unpack hugo_0.69.2_Linux-64bit.deb …

Unpacking hugo (0.69.2) …

Setting up hugo (0.69.2) …
```

如果安装成功，你应该能够使用hugo命令：

`
$ hugo --help
`

然后就可以在Cloud studio 生成博客目录

相关代码如下：

```
hugo new site 博客名称
hugo new posts/文章.md
hugo server -D
hugo -D
cd public
```
## Hugo通过命令一键部署

关于Coding现在有个不足之处就是我在 cloudstudio 写完文章以后push到Coding比较麻烦，需要输入好几条命令，下面提供具体操作如下。

在hugo目录中新建一个文件夹命名为 deploy.sh，文件内容如下：
```
# hugo生成
hugo
# cd到构建输出的目录下
cd public
# 初始化仓库
git init
# 添加
git add -A
# 提交
git commit -m deploy
# 强制推送到 chenchilde.github.io 仓库的 master 分支
git push -f git@e.coding.net:chenhonghan/Blog.git master
# 结束
cd -
```

然后每次在写完文章以后，直接运行 `bash deploy.sh`

这样就可以了。

![deploy.sh-1](/images/Cs1.png)

这个是运行记录

![deploy.sh-1](/images/Cs2.png)

**是不是部署很简单，现在这样就可以开始你的云端之旅了。**  😎

