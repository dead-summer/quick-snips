# 介绍

本仓库用来备份自用公式快捷键：

- `.hsnips` 后缀的为 VS code 插件 [HyperSnips for Math](https://marketplace.visualstudio.com/items?itemName=OrangeX4.hsnips) 所用到的相关 snippets, 包括 `latex`, `markdown`, `typst`. 
- `.js` 后缀的则为 Obsdian 插件 [latex suite](https://github.com/artisticat1/obsidian-latex-suite) 所用到的相关 snippets.

## sh 脚本

由于两个软件插件的限制，使得这些 snippets 无法天然的放在同一文件夹下。因此用 `copy.sh` 脚本便于将修改后的脚本复制到其对应的文件夹下。

在 powershell 下，使用一下命令：

```sh
.\copy.sh <file-name>
```

在 git bash 下，可采用如下命令：

```sh
sh copy.sh <file-name>
```

