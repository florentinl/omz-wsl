export BROWSER='explorer.exe'

function command_not_found_handler {
  for ext in ${(s:;:)${PATHEXT-".exe;.bat;.cmd;"}}; do
    if (( $+commands[$1$ext] )); then
      exec -- "$1$ext" "${@:2}"
    fi
  done
  print -ru2 "command not found: $1"
  return 127
}

# Explorer.exe can open either a file/folder or a URL
# If it's a URL (i.e. starts with http:// or https://), no need to tamper with it
# Otherwise, convert the path to Windows format and pass it to explorer.exe
function explorer {
  if [[ $1 == http(|s)://* ]]; then
    explorer.exe "$@"
  else
    explorer.exe "$(wslpath -w "$1")"
  fi
}

alias exp='explorer.exe'
