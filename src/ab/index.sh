#! /bin/sh

set -euo pipefail

# ab -n 1000 -c 100 'http://127.0.0.1:9088/tool_node/menu/iframeList'
ab -n 1000 -c 100 'http://127.0.0.1:9088/tool_node/menu/getMenuLevelOne'


