#!/bin/bash
# Make sure this file has executable permissions, run `chmod +x run-app.sh`

# Build assets using NPM
npm run build

# Clear cache
php artisan optimize:clear

# Cache the various components of the Laravel application
php artisan config:cache
php artisan event:cache
php artisan route:cache
php artisan view:cache

# Process the Nginx configuration template
node /assets/scripts/prestart.mjs /assets/nginx.template.conf /nginx.conf

# Run any database migrations
# php artisan migrate --force