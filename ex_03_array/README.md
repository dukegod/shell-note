### 创建

```
// 通过空格区分
array=(1 2 3 4)

//index定义
array=([3]='fourth element' [4]='fifth element')
```

### 数组长度

```
echo "${array[@]}"
```

### 数组元素操作

```
// 输出元素
echo "${array[3]}"

// 输出从所有元素
echo "${array[*]}"

// 输出从index为1的所有元素
echo "${array[@]:1}"

// 输出从index为1的开始的3个元素
echo "${array[@]:1:3}"

```

### 增加，删除，插入操作