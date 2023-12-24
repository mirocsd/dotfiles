#!/usr/bin/env bash

# dir="$HOME/.config/polybar"
# themes=(`ls --hide="launch.sh" $dir`)


# Terminate already running bar instances
killall -q polybar

# wait until processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

screens=$(xrandr --listactivemonitors | grep -v "Monitors" | cut -d" " -f6)

if [[ $(xrandr --listactivemonitors | grep -v "Monitors" | cut -d" " -f4 | cut -d"+" -f2- | uniq | wc -l) == 1 ]]; then
  MONITOR=$(polybar --list-monitors | cut -d":" -f1) TRAY_POS=right polybar miro &
else
	primary=$(xrandr --query | grep primary | cut -d" " -f1)

  for m in $screens; do
    if [[ $primary == $m ]]; then
        MONITOR=$m TRAY_POS=right polybar mirobar &
    else
        MONITOR=$m TRAY_POS=left polybar monitorbar &
    fi
  done
fi
