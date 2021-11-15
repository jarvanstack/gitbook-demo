# 远程地址请替换为自己的远程 ssh 地址,使用 git remote -v 查看,
REPO_PATH=git@github.com:dengjiawen8955/gitbook-demo.git

# bin/bash
# 创建新的分支并切换到该分支
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
git push origin gh-pages:gh-pages
cd ..
# 删除gh-pages文件夹
rm -rf gh-pages