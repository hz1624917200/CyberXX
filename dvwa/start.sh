#!/bin/bash

echo '[+] Starting mysql...'
service mysql start

echo '[+] Starting apache...'
service apache2 start

echo '[+] Starting filebeat...'
filebeat -c filebeat_http.yml &

while true
do
    tail -f /var/log/apache2/*.log
    exit 0
done
