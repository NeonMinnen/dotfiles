#!/usr/bin/env sh

# Terminate already running bar instances
killall -q rofi

# Wait until the processes have been shut down
while pgrep -x rofi >/dev/null; do sleep 1; done

# Launch main
rofi --show=drun --lines=5 --prompt="" --hide-scroll --insensitive --columns=2
