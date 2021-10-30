#!/bin/bash

base=$(dirname "$0")"/../"
real=$(realpath $base)

sudo crontab -l > /tmp/cron &> /dev/null
echo "3 0 * * * $real/scripts/backup.sh" >> /tmp/cron
echo "15 0 * * * $real/scripts/backup.sh" >> /tmp/cron
sudo crontab /tmp/cron

echo "Your sudo crontab:"
sudo crontab -l
echo "bye!"