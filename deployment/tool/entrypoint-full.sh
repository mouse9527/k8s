#!/bin/sh
echo "fulltextsearch:live"
php -f /var/www/html/occ files_external:notify 6 -v > /var/log/notify-6.log  &
echo "files_external:notify 6"
php -f /var/www/html/occ files_external:notify 7 -v > /var/log/notify-7.log  &
echo "files_external:notify 7"
php -f /var/www/html/occ files_external:notify 8 -v > /var/log/notify-8.log  &
echo "files_external:notify 8"
