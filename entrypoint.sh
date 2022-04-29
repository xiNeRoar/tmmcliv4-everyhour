#!/bin/sh

if [ ! -f /mnt/cron.conf ]; then
#scrap every hour
    echo "0 0 0/1 1/1 * ? * /config/tinyMediaManagerCMD.sh -scrapeNew" > /mnt/cron.conf
fi
chmod 777 /config/*
chmod 600 /mnt/cron.conf
crontab /mnt/cron.conf

exec "$@"
