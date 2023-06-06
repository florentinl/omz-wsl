#!/bin/zsh

# Explorer.exe can open either a file/folder or a URL
# If it's a URL (i.e. starts with http:// or https://), no need to tamper with it
# Otherwise, convert the path to Windows format and pass it to explorer.exe
if [[ $1 == http(|s)://* ]]; then
  explorer.exe "$@"
else
  explorer.exe "$(wslpath -w "$1")"
fi
