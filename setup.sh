#!/bin/bash
echo "Creating config file..."

echo "Enter the Dweet ID for IP Address: "
read d_id_ip

echo "Enter the interface you would like the IP of dweeted: "
read interface_id
printf "dweet_id_ip=${d_id_ip}\ninterface=${interface_id}" > config.cfg

echo "Adding Cron job..."

DIR="$(cd -P -- "$(dirname -- "$0")" && pwd -P)"


command="${DIR}/nomohead.sh"
job="@reboot bash $command"
echo "Adding to cron - ${job}"
cat <(fgrep -i -v "$command" <(crontab -l)) <(echo "$job") | crontab -

echo "Done."
