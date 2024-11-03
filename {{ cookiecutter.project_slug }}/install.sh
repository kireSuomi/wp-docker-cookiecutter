#!/bin/bash

if [ ! -f wp-config.php ]; then
  echo "wp-config.php not found. Cancelling installation."
  exit 1
fi

# Install PHP dependencies using Composer
composer install

# Move wp-config.php into /webroot
mv wp-config.php ./webroot/

# Make the startdev.sh script executable
echo "Enter password to make ./startdev.sh executable..."
sudo chmod +x ./startdev.sh
