# 环境相关的配置

## 目录

* [#system](系统变量)
* [#variable](变量)
* [#数组](数组)
* [#文件操作](文件操作)

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

### variable

获取变量：$

全局变量 与 本地变量

本地变量: local 标识

```sh
globalvar="global var"
function local(){
  local globalvar="local var "
  echo "local::: $globalvar"  
}
local
echo "global::: $globalvar"
```

### 数组

```sh
nm="god"
array=('james' 'kobi' 'kv' ${nm})

echo "${array[@]}"
```

### 文件操作

```sh
fils=`ls ~/.oh-my-zsh/shell-tutorials`
for item in fils; do
  #statements
  echo ${item}
done
```
