# OMZ WSL

Oh-My-ZSH plugin for WSL.

## Installation

Clone and enable the plugin:

```zsh
git clone https://github.com/florentinl/omz-wsl.git $ZSH_CUSTOM/plugins/omz-wsl
omz plugin enable omz-wsl
```

Add symlink to mock xdg-open (useful for some programs that use it):

```zsh
ln -s $ZSH_CUSTOM/plugins/omz-wsl/open_browser.sh ~/.local/bin/xdg-open
```

## Open programs seemlessly from WSL

```zsh
cargo doc --open # Now works
```

Some other tools that try to open a web browser or a file explorer from a terminal (using `xdg-open`) will also work.

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
