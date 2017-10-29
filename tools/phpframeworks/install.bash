#!/bin/bash

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php --install-dir=$HOME/bin
php -r "unlink('composer-setup.php');"
sudo mv $HOME/bin/composer.phar /usr/bin/composer

composer global require "laravel/installer"
composer global require "laravel/lumen-installer"

BINDIR=$HOME/bin/symfony
curl -LsS https://symfony.com/installer -o$BINDIR
chmod a+x $HOME/bin/symfony
