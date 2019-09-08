# 函数

```sh
function_name () {
  list of commands
  [ return value ]
}
```

删除变量

像删除变量一样，删除函数也可以使用 unset 命令，不过要加上 .f 选项，如下所示：

```sh
$unset .f function_name
```
