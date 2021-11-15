# 发布到GitHub Page

个人喜欢一般将 gitbook 的 markdown 源码和发布的 github page 放到一个仓库

具体操作如下

## 自动发布

### 创建脚本 push-pages.bash 

创建脚本 push-pages.bash 

```bash
vim push-pages.bash 
```
脚本如下

**远程地址请替换为自己的远程仓库 ssh 地址**

```bash
# 远程地址请替换为自己的远程仓库 ssh 地址,使用 git remote -v 查看,
REPO_PATH=git@github.com:dengjiawen8955/gitbook-demo.git

# bin/bash
# 创建新的分支并切换到该分支
git branch -d gh-pages
git checkout -b gh-pages
# 切换回主分支
git checkout master
# 将本地新建的分支推送到远程
git push origin gh-pages:gh-pages
# 我们只克隆了gh-pages分支，并存放在一个目录gh-pages里面
git clone -b gh-pages ${REPO_PATH}  ../gh-pages
# 构建静态网页到 ./_book 临时文件夹
gitbook build ./ ./_book
# 复制静态网页
cp -r _book/* ../gh-pages/
# 删除临时文件
rm -rf _book
# push 分支到仓库
cd ../gh-pages
git add .
git commit -m "feat(pages): update pages"
git push -f origin gh-pages:gh-pages
cd ..
# 删除gh-pages文件夹
rm -rf gh-pages
```

### 执行自动脚本

```bash
chmod +x push-pages.bash
./push-pages.bash
```

## 手动发布

> 注意: 分支名必须为 gh-page

```bash
# 创建新的分支并切换到该分支
$ git checkout -b gh-pages
Switched to a new branch 'gh-pages'
# 切换回主分支
$ git checkout master
M       .gitignore
M       README.md
M       SUMMARY.md
Switched to branch 'master'
# 将本地新建的分支推送到远程
$ git push origin gh-pages:gh-pages
Total 0 (delta 0), reused 0 (delta 0), pack-reused 0
remote: 
remote: Create a pull request for 'gh-pages' on GitHub by visiting:
remote:      https://github.com/dengjiawen8955/gitbook-demo/pull/new/gh-page
remote: 
To github.com:dengjiawen8955/gitbook-demo.git
 * [new branch]      gh-pages -> gh-pages
```



```bash

# 我们只克隆了gh-pages分支，并存放在一个目录gh-pages里面
$ git clone -b gh-pages git@github.com:dengjiawen8955/gitbook-demo.git  ../gh-pages
# 构建静态网页到 ./_book 临时文件夹
$ gitbook build ./ ./_book
info: 7 plugins are installed 
...
info: >> generation finished with success in 2.3s ! 
# 复制静态网页
$ cp -r _book/* ../gh-pages/
# push 分支到仓库
$ cd ../gh-pages
$ git add .
$ git commit -m "feat(web): init web"
$ git push origin gh-pages:gh-pages
```
## 查看效果

访问: https://{用户名}.github.io/{仓库名} 查看效果

例如:

https://dengjiawen8955.github.io/gitbook-demo