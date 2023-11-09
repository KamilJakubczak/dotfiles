#!/bin/bash

IP=10.50.50.20
echo $IP
echo $IP

OPENVPN=$(ip a | grep -oE '[10]{2}\.[50]{2}\.[50]{2}\.[20]{2}')
[ -z ${OPENVPN%?} ] && echo "#fc0313" || echo "#13fc03"

exit 0
