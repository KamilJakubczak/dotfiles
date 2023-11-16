#!/bin/bash

ARTICKLES=$(newsboat -x print-unread | grep -E -o '[0-9]+')
echo $ARTICKLES
echo $ARTICKLES

newsboat -x reload

exit 0
