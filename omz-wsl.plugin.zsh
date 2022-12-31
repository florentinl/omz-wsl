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
