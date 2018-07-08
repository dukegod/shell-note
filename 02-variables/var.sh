#!/bin/sh

globalvar="global var"
function localss(){
  local globalvar="local var "
  echo "local::: $globalvar"  
}
localss
echo "global::: $globalvar"
