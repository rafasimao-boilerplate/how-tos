# Atom setup

### Installing on Debian

[Installing link](https://flight-manual.atom.io/getting-started/sections/installing-atom/#debian-and-ubuntu-debapt)

```sh
wget https://github.com/atom/atom/releases/download/v1.9.2/atom-amd64.deb

sudo apt-get install ./atom-amd64.deb
```


### Packages

To install the packages you can just go to `Preferences > Install` and search the packages you like.

Recommend installing:
- [Atom Updater Linux](https://atom.io/packages/atom-updater-linux)
- [File-icons](https://atom.io/packages/file-icons)
- [Dracula Theme](https://draculatheme.com/atom/)
- [X Terminal](https://atom.io/packages/x-terminal)

### Shortcuts

To edit your shortcuts, just go to `Preferences > Keybindings > your keymap file` and add your shortcuts.

To add some Eclipse keybindings just add this to your keymap file:

```
'atom-text-editor':
  'ctrl-d': 'editor:delete-line'
  'alt-down': 'editor:move-line-down'
  'alt-up': 'editor:move-line-up'
  'ctrl-alt-down': 'editor:duplicate-lines'
```

> If you are using Debian the last one may be a problem due to workspace shortcuts, to remove the 'ctrl-alt-down' workspace shortcut, run these commands:

```sh
gsettings get org.gnome.desktop.wm.keybindings switch-to-workspace-down
# Which wil return: ['<Super>Page_Down', '<Control><Alt>Down']

# And to remove the last one:
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Super>Page_Down']"
```
