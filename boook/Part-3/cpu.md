# cpu

查看CPU

```sh
#! /bin/sh

ps xro %cpu=,comm= | while read cpu comm; ((i++<5)); 
do echo $cpu% $(basename "$comm"); 
done
```
