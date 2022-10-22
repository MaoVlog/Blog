---
title: "Memos备忘录，记录瞬间想法"
date: "2022-10-09"
description: 搭建一个碎片化知识卡片管理工具——Memos
category: 折腾
tags: [吐槽,微博,memos,说说]
toc: true
---

![](https://chenyyds.com/images/memos.png)
## 前言

我经常会记录一些生活上点点滴滴及吐槽自己的闲言闲语。

旦又不喜欢像写博客的形式来长篇论文。我其实很懒散，不爱更新博客。

之前在少数派中发现了@daibor 利用BaaS快速搭建无点赞评论版类似于微博。成功的搭建了：[B言B语](http://bb.chenplus.com)

最后发现@木木大佬的 [「哔哔点啥」微信公众号 2.0](https://immmmm.com/bb-by-wechat-pro/) 按照教程微信公众号也部署成功。

因为「哔哔点啥」他的后端及微信公众号都是通过腾讯CloudBase来进行部署的。直到今年的某月分，CloudBase不再进行免费。

对于我来说好不容易找到一个记录短文的平台就这么失去了。苦恼啊~😶‍🌫️

嘿~他来了。 又发现一个好玩的应用。` Memos`

一个开源的、自托管的知识库。应用UI简洁，没有太多花里胡哨的功能，非常适合日常记录各种一闪而过的想法。
<!--more-->

## 介绍

1.1 有啥用？

- 📅 方便记录每日 / 周计划
- 💡 方便记录一些奇思妙想
- 📕 可以随手写写读后感
- 🏗️有时候可以代替在微信上经常使用的“文件传输助手”、手机的备忘录
- 📒 可以打造一个属于自己的轻量化“卡片”笔记簿

1.2 有啥特点？

- ✨ 免费、开源项目！
- 😋 颜值高！UI非常的大气、漂亮！
- 📑 交互逻辑体验优秀！
- 👫 支持中文！支持多用户！
- ⚡ 支持Docker快速部署！
- 🚀 目前正在全力开发中，之后会有更多功能……

相关地址

官方Demo：[https://demo.usememos.com/](https://demo.usememos.com/)

GitHub地址：[https://github.com/usememos/memos](https://github.com/usememos/memos)

## 部署

使用 Docker 部署创建并启动容器，镜像里包含所需的所有环境。只需自行 pull + run，即可完成部署。
```
docker run \
  --name memos \
  --publish 5230:5230 \
  --volume ~/.memos/:/var/opt/memos \
  neosmemo/memos:latest \
  --mode prod \
  --port 5230
  
 ```
#### Docker Compose

在示例[docker-compose.yaml](https://github.com/usememos/memos/blob/main/docker-compose.yaml/) 文件中查看更多信息。

通过访问 localhost:5230 即可打开 Memos，首次安装会提示注册用户，请记牢您的而密码。数据文件默认存储在 ~/.memos 中。

如果~/.memos/没有memos_prod.db文件，则memos将自动生成它。

## 单页部署代码

@[木木大佬](https://immmmm.com/bb-by-memos/) 已做 js 文件调用处理，找个页面丢入以下 html + js + css 即可。
```go
<div id="bber"></div>
<script type="text/javascript">
  var bbMemos = {
    memos : 'https://me.edui.fun/',//修改为自己的 apiurl，末尾有 / 斜杠
    limit : '',//默认每次显示 10条 
    creatorId:'' ,//默认为 101用户 https://demo.usememos.com/u/101
    domId: '',//默认为 <div id="bber"></div>
  }
</script>
<script src="https://immmmm.com/bb-lmm.js"></script>
<script src="https://fastly.jsdelivr.net/gh/Tokinx/ViewImage/view-image.min.js"></script>
<script src="https://fastly.jsdelivr.net/gh/Tokinx/Lately/lately.min.js"></script>
```
样式代码还在持续更新中，所以详见源码。

B言B语：[https://chenyyds.com/bb](https://chenyyds.com/bb)

## 扩展插件

 
 Memos已经被@木木大佬玩出花样来了，新增浏览器扩展插件快捷发布内容。
 
 ![](https://chenyyds.com/images/browser.png)
 
 插件安装：[memos-bber-0.1.0.zip](https://me.edui.fun/o/r/52/memos-bber-0.1.0.zip)
 
 苹果iOS端可以：[MoeMemos IOS](https://testflight.apple.com/join/YVHheZ50) 快捷指令发布
 
 由[rabithua](https://rabithua.club/) 搭建的微信小程序版[麦墨](https://github.com/Rabithua/memos_wmp) 可以发布哔哔.也可以自行搭建。
 
 

**总之Memos非常不错。又可以畅所欲为了。**  😎

