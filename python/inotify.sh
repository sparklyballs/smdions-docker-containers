#!/bin/sh

while inotifywait -e modify /config; do
    rm /root/crons.conf
    sleep 5
    cp /config/crons.conf /root/crons.conf
    crontab /root/crons.conf
    echo "Changed cron"
done
