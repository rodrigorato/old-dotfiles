#!/bin/bash
ICON=$HOME/.images/lock.png
TMPBG=/tmp/screen.png
scrot /tmp/screen.png

# generates a minecrafty blur
#convert $TMPBG -scale 10% -scale 1000% $TMPBG

convert $TMPBG -blur 0x3 $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
i3lock -u -i $TMPBG
