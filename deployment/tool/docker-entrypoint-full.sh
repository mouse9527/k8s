#!/bin/sh
set -eu

supervisord -c /supervisord.conf &

php -f /var/www/html/occ fulltextsearch:live  &
php -f /var/www/html/occ files_external:notify 6 &
php -f /var/www/html/occ files_external:notify 7 &
php -f /var/www/html/occ files_external:notify 8 &
