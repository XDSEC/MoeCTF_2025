#!/bin/sh
# start.sh

# 使用 env -i 完全清理环境，只设置必要的变量
exec env -i \
  PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin" \
  TERM="xterm" \
  /usr/sbin/sshd -D
