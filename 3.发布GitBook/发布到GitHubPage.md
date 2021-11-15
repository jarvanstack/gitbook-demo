# 发布到GitHub Page

个人喜欢一般将 gitbook 的 markdown 源码和发布的 github page 放到一个仓库

具体操作如下

## 创建 gh-pages 分支

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
# 创建专门放新分支的文件夹 mkdir gh-pages
[root@jarvan gitbook-demo]# mkdir gh-pages 
# 新建 .gitignore 将 gh-pages 放进去
$ vim .gitignore
```

.gitignore 内容如下

```.gitignore
# 自动生成的图书的内容
_*/
# github page
gh-pages

```

```bash
# 我们只克隆了gh-pages分支，并存放在一个目录gh-pages里面
$ git clone -b git@github.com:dengjiawen8955/gitbook-demo.git  gh-pages

```