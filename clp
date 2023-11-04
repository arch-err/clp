#!/bin/bash
#===========>>
#
# A script to copy files over through a simple shell command
# Made by arch-err
# https://github.com/arch-err/clp
#
#===========>>

printf "\e[1;91mWarning: If you can read this message you're using this script in a wrong way. You are supposed to launch this through a launcher (like dmenu, rofi, krunner, etc.). \e[1;97m\n"
printf "https://tools.suckless.org/dmenu/\n"

startdir=~
file=$(ls -a $startdir | dmenu -l 25 -p "Pick a file to transfer: ")
fpath=$startdir/$file


content=$(cat $fpath | base64 | perl -pe 's/\n//g')
write="echo '$content' | base64 -d > $file"

echo $write | xclip -sel clip
xdotool key Ctrl+Shift+v
