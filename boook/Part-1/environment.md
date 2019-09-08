# 环境相关的配置

## 目录

* [#system](系统变量)

### system

查看系统安装了哪些shell

```sh
cat /etc/shells
```

查看当前正在使用的shell：

```sh
echo $SHELL
```

修改系统中shell

```sh
// 改为zsh
chsh -s /bin/zsh

// 改为bash
chsh -s /bin/bash
```
