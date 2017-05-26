#!/bin/bash
networksetup -listallhardwareports | grep "Hardware Port: " |cut -c16- | while read line
do
    echo "Enabling IPv6 for ${line}"
    networksetup -setv6automatic "${line}"
done
echo "IPv6 can be disabled with 'grump disableIPv6'"