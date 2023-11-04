# ClP
---

## Description

ClP (Clipboard - Paste) is a very simple but useful script that transfers files via the shell.
This script is primarily created for red-teamers that quickly and easily wants to copy a file over to a victim host (and your only access to it is an open shell).

### Usage
The intended usage of ClP is to run it "headless-ly" via a launcher (dmenu, rofi, kRunner, etc.).
This will open a dmenu window (You could mod the script to use your favourite launcher) to pick a file in your home directory (can also me changed) to transfer.

### How does it work?
The script works by base64 encoding the files contents, copying them to the clipboard, and then pasting it in your current active window (along with a command that writes it to a file on the remote host).


---


## Installation (Dependencies)

 - xclip
 - dmenu

### Arch-based distributions
```bash
sudo pacman -S dmenu xclip
```
### Debian-based distributions
```bash
sudo apt install dmenu xclip
```

