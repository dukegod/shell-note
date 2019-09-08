# 变量

## 目录

* [定义变量](#定义变量)

### 定义变量

* 首字母必须为字母
* 定义变量不加`$`
* 中间不能有空格
* 不能使用标点符号

***注意***  

* 使用'='链接
* 等号两边不能有 **空白符**

#### 全局变量 与 本地变量

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

### 使用变量

* 只要在变量名前面加美元符号`$`即可，
* 是否使用`()`都可以（最好加上，提高代码可读性）

```sh
word="hello word"
echo $word
echo $(word)
```

### 重新定义变量

直接定义就会覆盖以上的定义

### 只读变量

`readonly` 命令可以将变量定义为只读变量，只读变量的值不能被改变。

```sh
readonly word="hello word"
echo $(word)
```

### 删除变量

* unset 命令可以删除变量  不能删除只读变量
 
### 特殊变量

变量 | 含义
---|---
$0 |	当前脚本的文件名
$n |	传递给脚本或函数的参数。n 是一个数字，表示第几个参数。例如，第一个参数是$1，第二个参数是$2。
$# |	传递给脚本或函数的参数个数。
$* |	传递给脚本或函数的所有参数。
$@ |	传递给脚本或函数的所有参数。被双引号`""`包含时，与 `$*` 稍有不同，下面将会讲到。
$? |	上个命令的退出状态，或函数的返回值。退出状态是一个数字，一般情况下，大部分命令执行成功会返回 0，失败返回 1。
$$ |	当前Shell进程ID。对于 Shell 脚本，就是这些脚本所在的进程ID。

#### $* 和 $@ 的区别

$* 和 $@ 都表示传递给函数或脚本的所有参数，不被双引号(" ")包含时，都以"$1" "$2" … "$n" 的形式输出所有参数。

但是当它们被双引号(" ")包含时，"$*" 会将所有的参数作为一个整体，以"$1 $2 … $n"的形式输出所有参数；"$@" 会将各个参数分开，以"$1" "$2" … "$n" 的形式输出所有参数。

下面的例子可以清楚的看到 $* 和 $@ 的区别：

```sh
#!/bin/bash
echo "\$*=" $*
echo "\"\$*\"=" "$*"
echo "\$@=" $@
echo "\"\$@\"=" "$@"
echo "print each param from \$*"
for var in $*
do
    echo "$var"
done


echo "print each param from \$@"
for var in $@
do
    echo "$var"
done


echo "print each param from \"\$*\""
for var in "$*"
do
    echo "$var"
done


echo "print each param from \"\$@\""
for var in "$@"
do
    echo "$var"
done

```

执行 ./test.sh "a" "b" "c" "d"，看到下面的结果：

```sh
$*=  a b c d
"$*"= a b c d
$@=  a b c d
"$@"= a b c d
print each param from $*
a
b
c
d
print each param from $@
a
b
c
d
print each param from "$*"
a b c d
print each param from "$@"
a
b
c
d

```

### 命令替换

即：反引号

```sh
Date=`date`
echo $Date
```

可用的替换形式

形式 | 说明
---|---
${var}    |	变量本来的值
${var:-word}    |	如果变量 var 为空或已被删除(unset)，那么返回 word，但不改变 var 的值。
${var:=word}  |	如果变量 var 为空或已被删除(unset)，那么返回 word，并将 var 的值设置为 word。
${var:?message}  |	如果变量 var 为空或已被删除(unset)，那么将消息 message 送到标准错误输出，可以用来检测变量 var 是否可以被正常赋值。
若此替换出现在Shell脚本中，那么脚本将停止运行。
${var:+word}  |	如果变量 var 被定义，那么返回 word，但不改变 var 的值。
