#!/bin/bash
# ============================================================
#  Author: Chu-Siang Lai / chusiang (at) drx.tw
#  Blog: http://note.drx.tw
#  Filename: setting-trackpoint-speed.sh
#  Modified: 2017-02-19 13:42
#  Description: Setting the ThinkPad trackpoint Speed and Sensitivity.
#  Reference:
#
#   - How to configure the TrackPoint | ThinkWiki 
#    - http://www.thinkwiki.org/wiki/How_to_configure_the_TrackPoint#Sensitivity_.26_Speed
#
# ============================================================

SPEED_CONF="/sys/devices/platform/i8042/serio1/serio2/speed"
SENSITIVITY_CONF="/sys/devices/platform/i8042/serio1/serio2/sensitivity"

if [ -f $SPEED_CONF ]; then
  echo -n 100 > $SPEED_CONF
fi

if [ -f $SENSITIVITY_CONF ]; then
  echo -n 250 > $SENSITIVITY_CONF
fi

