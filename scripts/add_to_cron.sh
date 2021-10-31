#!/bin/bash

base=$(dirname "$0")"/../"
real=$(realpath $base)

sudo crontab -l > /tmp/cron &> /dev/null
echo "0 5 * * * $real/scripts/backup.sh" >> /tmp/cron
sudo crontab /tmp/cron

echo "Your sudo crontab:"
sudo crontab -l
echo "bye!"