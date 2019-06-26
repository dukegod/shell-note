# 环境相关的配置

## 系统查看

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

## 配置oh-my-zsh

配置 [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)开发环境，建议自己去github上fork一份，方便以后切换电脑快速配置，具体配置可以直接参考github主页配置就好了。
