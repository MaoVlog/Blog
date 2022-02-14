---
title: "jsdelivr CDN挂了解决方案"
date: "2022-01-20"
description: "jsdelivr cdn挂了解决方案、用unpkg来快速临时替代它 "
categories: 生活随笔
tags: 
- cdn
- jsdelivr
---

我几个月没打开博客网站了，突然发现使用的Twikoo评论系统无法显示，发布的哔哔也是！
找了下原因结果是 jsdelivrCDN加速的库都无法加载了！百度了下才知道已经挂了！(ノ°ο°)ノ
> 20211220 jsdelivr cdn 挂了，证书过期，导致网站挂了，要想修复它，解决方案如下
### 使用别的cdn临时代替(推荐)
https://unpkg.com/
### 把资源全部下载到本地(不推荐)
可以暂时把所有资源都下载到本地，等待jsdelivr修复完毕再替换回去
### 什么？不会替换？

不管你是前后端分离的项目，还是后端语言搭载模板引擎的传统mvc项目，都可以快速替换。
比如你原本是类似如下格式引入jquery

```xml
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
```

你直接替换为如下

```xml
<script src="https://unpkg.com/jquery@3.6.0/dist/jquery.min.js"></script>
```

简单来说就是把`https://cdn.jsdelivr.net/npm/`替换为`https://unpkg.com/`

目前我托管在github仓库的图床还没找到完美的加速方案！
