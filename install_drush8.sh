# Browse to https://github.com/drush-ops/drush/releases and download the drush.phar attached to the latest 8.x release.
wget https://github.com/drush-ops/drush/releases/download/8.4.10/drush.phar

# Test your install.
php drush.phar core-status

# Rename to `drush` instead of `php drush.phar`. Destination can be anywhere on $PATH. 
chmod +x drush.phar
sudo mv drush.phar /usr/bin/drush

# Optional. Enrich the bash startup file with completion and aliases.
drush init
