#!/bin/bash
# Make sure this file has executable permissions, run `chmod +x start-app.sh`

# Run any database migrations
php artisan migrate --force

# Start PHP-FPM
php-fpm -y /assets/php-fpm.conf & 

# Start Nginx in the foreground
exec nginx -c /nginx.conf