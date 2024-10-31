#!/bin/bash
# Make sure this file has executable permissions, run `chmod +x run-app.sh`
# Process the Nginx configuration template
php artisan migrate --force && node /assets/scripts/prestart.mjs /assets/nginx.template.conf  /nginx.conf && (php-fpm -y /assets/php-fpm.conf & nginx -c /nginx.conf)