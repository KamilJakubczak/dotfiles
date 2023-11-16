#!/bin/bash
#
case $BLOCK_BUTTON in
    3) pgrep -x dunst >/dev/null && notify-send " Battery module" " : discharging
: not charging
: stagnant charge
: charging
: charged
: battery very low!
- Text color reflects charge left" ;;
esac

BAT=$(acpi -b | grep -E -o '[0-9][0-9]?%')

# Full and short texts
echo "Battery: $BAT"
echo "BAT: $BAT"

# Set urgent flag below 5% or use orange below 20%
[ ${BAT%?} -le 5 ] && exit 33
[ ${BAT%?} -le 20 ] && echo "#FF8000"

exit 0
