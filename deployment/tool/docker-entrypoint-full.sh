#!/bin/sh
set -eu

php -f /var/www/html/occ fulltextsearch:live  &
php -f /var/www/html/occ files_external:notify 6 &
php -f /var/www/html/occ files_external:notify 7 &
php -f /var/www/html/occ files_external:notify 8 &
