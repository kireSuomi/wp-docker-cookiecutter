#!/bin/bash

if [ ! -f wp-config.php ]; then
  echo "wp-config.php not found. Cancelling installation."
  exit 1
fi

# Install PHP dependencies using Composer
composer install

# Move wp-config.php into /webroot
mv wp-config.php ./webroot/

echo "Run ./startdev.sh to start the development environment."