# OMZ WSL

Oh-My-ZSH plugin for WSL.

## Call windows programs without .exe

Allows to use windows programs without having to add the `.exe` extension:

```zsh
wsl -l -v # instead of `wsl.exe -l -v`
echo "Something" | clip # instead of `clip.exe`
```

## Fix `explorer.exe` path interpretation

```zsh
explorer nested/folder # Now works
explorer https://github.com # Still works
```
