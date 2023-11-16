#!/bin/bash

TA=`task project:work.alab status:pending ls`
case $BLOCK_BUTTON in
    3) pgrep -x dunst >/dev/null && notify-send "${TA}" "NOT OK" ;;
esac
TASKS=$(task project:work.alab status:pending count)
echo $TASKS
echo $TASKS

exit 0
