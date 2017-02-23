#!/bin/bash
# ============================================================
#  Author: Chu-Siang Lai / chusiang (at) drx.tw
#  Blog: http://note.drx.tw
#  Filename: switch-capslock-and-ctrl.sh
#  Modified: 2017-02-19 13:42
#  Description: Switch the Caps Lock and Left Ctrl key.
#  Reference:
#
#   - 對調 Ctrl 和 Caps Lock 鍵位 | 凍仁的筆記
#    - http://note.drx.tw/2013/03/ctrl-caps-lock.html
#
# ============================================================

# Find the build in thinkpad keyboard device id.
BUILDIN_KEYBOARD_ID=$(xinput list | grep 'AT Translated Set 2 keyboard' | awk '{ print $7 }' | sed 's/id=//')
HHKB_COUNT=`lsusb | grep "Topre Corporation HHKB Professional" | wc -l`

if [ $HHKB_COUNT -ne "1" ]; then
	/usr/bin/setxkbmap -option "ctrl:swapcaps"
else
  # Only switch the Caps Lock and Left Ctrl layout at ThinkPad T410.
  /usr/bin/setxkbmap -option "ctrl:swapcaps" -device $BUILDIN_KEYBOARD_ID
fi

