function command_not_found_handler {
  for ext in ${(s:;:)${PATHEXT-".com;.exe;.bat;.cmd;.vbs;.vbe;.js;.jse;.wsf;.wsh;.msc"}}; do
    if (( $+commands[$1$ext] )); then
      exec -- "$1$ext" "${@:2}"
    fi
  done
  print -ru2 "command not found: $1"
  return 127
}

alias copy="clip"
alias paste='powershell.exe -noprofile -c Get-Clipboard'

