# 数组

## 目录

```sh
nm="god"
array=('james' 'kobi' 'kv' ${nm})

echo "${array[@]}"
```

### 定义

```sh
array_name=(value0 value1 value2 value3)
```

还可以单独定义数组的各个分量：

```sh
array_name[0]=value0
array_name[1]=value1
array_name[2]=value2
```

### 读取

```sh
valuen=${array_name[2]}
```

使用@ 或 * 可以获取数组中的所有元素

```sh
${array_name[*]}
${array_name[@]}
```

### 获取数组的长度

```sh
# 取得数组元素的个数
length=${#array_name[@]}
# 或者
length=${#array_name[*]}
# 取得数组单个元素的长度
lengthn=${#array_name[n]}
```
