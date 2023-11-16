#!/bin/bash

IP=10.50.50.20
echo 'VPN 10'
echo 'VPN 10'

OPENVPN=$(ip a | grep -oE '[10]{2}\.[50]{2}\.[50]{2}\.[2]{1}[0-9]{1}')
[ -z ${OPENVPN%?} ] && echo "#fc0313" || echo "#13fc03"

exit 0
