# disk 

```sh
#! /bin/sh

df -Hl | {
  read keys;
  keys="${keys%% on}";
  while read ${keys//%}; do
    echo "`basename "$Mounted"` - $Used/$Size ($Capacity)";
  done
}
```
