shell的环境问题

### 查看系统安装了哪些shell

```
cat /etc/shells
```

### 创建与执行shell文件

创建shell文件在文件的表头添加`#!/bin/sh`

创建文件listShell.sh

```
#!/bin/sh
cat /etc/shells
```
执行shell文件方法有如下三种方式：
+ source ./listShell.sh
+ sh ./listShell.sh
+ . ./listShell.sh
