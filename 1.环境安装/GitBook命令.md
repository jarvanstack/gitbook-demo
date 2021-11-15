# GitBook命令

## 本地预览

```bash
$ gitbook serve ./
```

## 构建静态网站

```bash
$ gitbook build ./{book_name} --output=./{outputFolde}
# 例如
$ gitbook build ./ ./_book

```

## 查看帮助

```bash
$ gitbook -h

  Usage: gitbook [options] [command]

  Commands:

    build [options] [source_dir] Build a gitbook from a directory
    serve [options] [source_dir] Build then serve a gitbook from a directory
    install [options] [source_dir] Install plugins for a book
    pdf [options] [source_dir] Build a gitbook as a PDF
    epub [options] [source_dir] Build a gitbook as a ePub book
    mobi [options] [source_dir] Build a gitbook as a Mobi book
    init [source_dir]      Create files and folders based on contents of SUMMARY.md
    publish [source_dir]   Publish content to the associated gitbook.io book
    git:remote [source_dir] [book_id] Adds a git remote to a book repository

  Options:

    -h, --help     output usage information
    -V, --version  output the version number
```