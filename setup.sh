#!/bin/bash

command -v composer >/dev/null || ./install-composer.sh
sudo apt-get install sqlite -y
sudo apt-get install php-sqlite3
touch database.sqlite

composer install

./bin/console doctrine:migrations:migrate

echo "Done"