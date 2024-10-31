#!/bin/bash
# Make sure this file has executable permissions, run `chmod +x start-app.sh`

# Run any database migrations
php artisan migrate --force

# Serve app
node /assets/scripts/prestart.mjs /assets/nginx.template.conf /nginx.conf && (php-fpm -y /assets/php-fpm.conf & nginx -c /nginx.conf)