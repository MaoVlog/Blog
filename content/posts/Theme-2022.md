---
title: "给博客换身皮"
date: 2022-01-22T14:53:36+08:00
categories: 
- 网络应用
- 生活随笔
tags: [吐槽,博客,hugo,Theme]
---

春节快来了，顺便把博客更新一下。差不多大半年没更新博客了。

自从以前的Hexo换成了Hugo，速度真的快了很多，不愧是 “The world’s fastest”。用的主题是 [Tania](https://github.com/WingLim/hugo-tania)，很简洁、漂亮。Hugo 非常易用，我不喜欢花里胡哨的东西。我所以就选择了这款主题。🌈

CI 用的是 GitHub Actions:

```yaml
name: GitHub Page Deploy

on:
  push:
    branches:
      - main
jobs:
  build-deploy:
    runs-on: ubuntu-20.04
    steps:      
      - name: Checkout main
        uses: actions/checkout@v2
      - name: Setup Hugo
        uses: peaceiris/actions-hugo@v2
        with:
          hugo-version: '0.81.0'
          # extended: true

      - name: Build Hugo
        run: |
          hugo
      - name: Deploy Hugo to gh-pages
        uses: peaceiris/actions-gh-pages@v2
        env:
          ACTIONS_DEPLOY_KEY: ${{ secrets.ACTIONS_DEPLOY_KEY }}
          PUBLISH_BRANCH: gh-pages
          PUBLISH_DIR: ./public
```

**总之就是非常丝滑**，Hugo NB!