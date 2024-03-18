#!/bin/bash

IP=2.0.207.225
echo 'VPN 2'
echo 'VPN 2'

OPENVPN=$(ip a | grep -oE '\b[2]{1}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}')
[ -z ${OPENVPN%?} ] && echo "#fc0313" || echo "#13fc03"

exit 0
