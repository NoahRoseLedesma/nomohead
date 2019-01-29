#!/bin/bash
# nomohead.sh
echo "Loading config..."

DIR="$(cd -P -- "$(dirname -- "$0")" && pwd -P)"

. "${DIR}/config.cfg"

IP="$(ip -4 addr show ${interface} | grep -oP '(?<=inet\s)\d+(\.\d+){3}')"

echo "Dweeting IP... "
wget --post-data="IP=${IP}" http://dweet.io/dweet/for/${dweet_id_ip} -O /dev/null



