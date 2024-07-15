#!/usr/bin/env bash

# Terminate already running bar instances
polybar-msg cmd quit

polybar bottom
# echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
# polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown
# polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown
#
# echo "Bars launched..."
