#!/bin/bash

IP=10.50.50.20
echo 'VPN 10'
echo 'VPN 10'

OPENVPN=$(ip a | grep -oE '[10]{2}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}')
[ -z ${OPENVPN%?} ] && echo "#fc0313" || echo "#13fc03"
exit 0
