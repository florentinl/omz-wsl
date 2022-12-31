# OMZ WSL

Oh-My-ZSH plugin for WSL.

## BROWSER environment variable

With `xdg-utils` installed, the command `open` works and opens the default windows program for the given item to open.

## Call windows programs without .exe

Allows to use windows programs without having to add the `.exe` extension:

```zsh
wsl -l -v # instead of `wsl.exe -l -v`
explorer . # instead of `explorer.exe .`
```
