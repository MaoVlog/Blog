---
title: "吐槽神器—B言B语"
date: 2020-04-25T14:53:46+08:00
description: 一个自言自语无点赞无评论之地。
categories: 网络应用
tags: [吐槽,微博]
---

![bb](/images/bb.jpg)

在刷博客的时候无意中发现@Daibor大佬的文章写到利用后端 BaaS 快速搭建专属无点赞评论版微博b言b语。[原文链接](https://sspai.com/post/60024)

我搭建的BB演示👇：[bb.ChenPlus.com](http://bb.ChenPlus.com)

基于LeanCloud 来实现的。前端用 AppID、AppKey 来展示，并把 class 的 create 、delete 、update 三项权限设置为「指定用户」，后端用 MasterKey 来更新，避免数据被更改。

通过作者提供的index.html [仓库下载](https://github.com/daibor/nonsense.fun)文件进行修改配置.

最后发布更新文章

> 原作者提供了 [iOS 快捷指令](https://www.icloud.com/shortcuts/3cfcbc36a6a24e0a8721bfeef8dfc6cf) 和 win下的 [Quicker 模板](https://getquicker.net/sharedaction?code=eeb80278-5f53-4b0d-d333-08d7e0dd26a9)。这里增加一个 VSCode 的 [REST Client](https://marketplace.visualstudio.com/items?itemName=humao.rest-client) 插件更新方法。

新建一个 .http 或 .rest 为后缀的文件：
```go
POST https://你的AppID前6位.api.lncldglobal.com/1.1/classes/content
X-LC-Id: 你的AppID
X-LC-Key: 你的MasterKey,master
Content-Type: application/json

{
    "content":"B言B语"
}
```
写好 content 内容后【右键–Send Request】或快捷键 【Cmd+Alt+R】发布。

**这样大功告成！你就可以尽情的狂言吐槽一番.**