git init
# 添加
git add -A
# 提交
git commit -am"init"
#分支
git branch -M main
#邮箱账号
git config --global user.email "maovlog@qq.com"
#用户名
git config --global user.name "MaoVlog"
#仓库
git remote add origin https://github.com/MaoVlog/Blog.git
#
git submodule update --init --recursive
#强制推送到 develop 分支
git push -f origin main
