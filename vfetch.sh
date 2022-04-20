#!/bin/bash
USERNAME="$(id -un)"
KERNEL="$(uname -r)"
DISTRO=$(awk 'BEGIN { FS="\""; } /^PRETTY_NAME=/ { print $2 }' /etc/os-release)
MEM="$(free -h | awk '/^Mem:/ {print $3 "/" $2}')"
UPTIME="$(uptime --pretty | sed -e 's/up //g' -e 's/ days/d/g' -e 's/ day/d/g' -e 's/ hours/h/g' -e 's/ hour/h/g' -e 's/ minutes/m/g' -e 's/, / /g')"

echo "
\e[0;36m   _                  \e[0;41m $USERNAME \e[0m
\e[0;36m ('v') \e[0m     \e[0;31mOS:\e[0m     \e[0;32m$DISTRO  \e[0m
\e[0;36m||-=-||\e[0m     \e[0;31mKernel:\e[0m \e[0;32m$KERNEL \e[0m
\e[0;36m(\_=_/)\e[0m     \e[0;31mMemory:\e[0m \e[0;32m$MEM RAM \e[0m
\e[0;36m ^^ ^^ \e[0m     \e[0;31mUptime:\e[0m \e[0;32m$UPTIME \e[0m
"
  

