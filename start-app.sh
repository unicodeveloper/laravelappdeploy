#!/bin/bash
# Make sure this file has executable permissions, run `chmod +x start-app.sh`
# Process the Nginx configuration template
#node /assets/scripts/prestart.mjs /assets/nginx.template.conf /nginx.conf && (php-fpm -y /assets/php-fpm.conf & nginx -c /nginx.conf)

# Run any database migrations
php artisan migrate --force

exec php-fpm -y /assets/php-fpm.conf & nginx -c /nginx.conf