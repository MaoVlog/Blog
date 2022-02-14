---
title: "快速搭建Hugo博客"
date: 2020-03-16T11:25:05-05:00
featured_image: "/images/hugo-blog.png"
description: 搭建Go编写的静态网站生成器
tags: [blog,text,Hugo]
categories: 网络应用
---
![hugo-blog](/images/hugo-blog.png)

## 前言

一直以来用了这么多年的[Wordpress](https://www.lianbaer.com/)，最近心血来潮，想要重新折腾一番自己的博客。于是想用Hugo搭建。

Hugo 是目前比较流行的Go编写的静态网站生成器，速度快，易用，可配置，相比Hexo来说操作更为简单。

Hugo 有一个内容和模板目录，把他们渲染到完全的 HTML 网站。可以参照[Hugo官网](https://gohugo.io/getting-started/quick-start/) 搭建自己个人博客。
## 下载、安装Hugo
这里MAC用户和Windows用户的操作是不同的。
- MAC用户

在控制台依次输入`$ brew install hugo、$ hugo version` 就可以下载下来了。
- Windows用户

1. 下载地址：[https://github.com/spf13/hugo/releases](https://github.com/spf13/hugo/releases)。

根据自己的操作系统，下载对应的安装包。我的操作系统是Win10 64bit， 选择了`hugo_0.69.2_Windows-64bit.zip`。

2. 解压后只需要把文件夹中hugo.exe文件单独拿出来，放到你预先建立的文件夹里，如你在D盘的software文件夹中建了一个名为hugo的文件夹，则你最后得到的地址为D:\Software\hugo\hugo.exe

3. 把D:\Software\hugo\加到环境变量的PATH中，这一步很关键

4. 重启终端，运行`hugo version`查看版本.

完成以上步骤后，打开命令行输入 `hugo help`

如果得到如下信息，说明安装成功。
``` 
hugo is the main command, used to build your Hugo site.

Hugo is a Fast and Flexible Static Site Generator
built with love by spf13 and friends in Go.

Complete documentation is available at http://gohugo.io/.
```
## 创建一个Hugo站点

新建自己博客站点,这里的Blog可以改为你自己设的名称

`hugo new site Blog`

得到如下提示创建成功的信息
``` 
Congratulations! Your new Hugo site is created in E:\blog.

Just a few more steps and you're ready to go:

1. Download a theme into the same-named folder.
Choose a theme from https://themes.gohugo.io/, or
create your own with the "hugo new theme <THEMENAME>" command.
2. Perhaps you want to add some content. You can add single files
with "hugo new <SECTIONNAME>\<FILENAME>.<FORMAT>".
3. Start the built-in live server via "hugo server".

Visit https://gohugo.io/ for quickstart guide and full documentation.
```
进入该目录，可以看到自动生成了5个目录和一个配置文件config.toml

``` 
|-- archetypes
|-- content   #存放内容的目录
|-- data      
|-- layouts   
|-- static    #存放静态资源（图片,css,js）
|-- themes    #存放主题
|-- config.toml  #配置文件
```
## 添加主题
添加主题，可以是默认的，也可以是别的主题，这里演示默认的主题，输入下面两行代码

`
git init
`

`
git submodule add https://github.com/budparr/gohugo-theme-ananke.git themes/ananke
`

然后从站点的根目录更新git存储库：

`
git submodule update --remote --merge
`

然后把默认主题名称添加到配置中，打开config.toml文件进行修改.

## 新建文章内容

新建一个markdown文件，完成博客内容

切换到该目录下，然后输入如下命令，会在content的目录下创建post目录，在post目录下创建名为test.md的文件。

`
cd blog 
`

` 
hugo new post/test.md
`

这个时候默认在posts文件夹下生成了你的第一个博客，现在修改标题，draft改为true，内容可以随意编辑，比如
``` 
---
  title: "Hello world!"
  date: 2020-03-16T11:47:15+08:00
  draft: true
 ---
 ## 大家好
 
  这是我的博客，希望能写一些好的文章分享给大家~~~
```

接着输入如下代码，可以预览你的博客

`
hugo server -D
`

建立静态页面，这里会生成一个public目录，这个目录实际上就是一个网站，我们只需输入如下代码

`
hugo -D
`

把最新的public目录上传到仓库（GitHub，Coding，码云）

**好了这样就大功告成**    🎉🎉🎉

> 这是我自己搭建好的博客网站：[blog.chenplus.com](https://blog.chenplus.com/)
