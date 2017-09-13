全局变量 与 本地变量

本地变量: local 标识

```bash
globalvar="global var"
function local(){
  local globalvar="local var "
  echo "local::: $globalvar"  
}
local
echo "global::: $globalvar"

```