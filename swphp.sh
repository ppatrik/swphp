#!/bin/bash

VERSION=$1
EXT_DATE=$2

sudo update-alternatives --set php /usr/bin/php${VERSION}
sudo update-alternatives --set phar /usr/bin/phar${VERSION}
sudo update-alternatives --set phar.phar /usr/bin/phar.phar${VERSION}
sudo update-alternatives --set phpize /usr/bin/phpize${VERSION}
sudo update-alternatives --set php-config /usr/bin/php-config${VERSION}

sudo pecl config-set php_ini /etc/php/${VERSION}/cli/php.ini
sudo pecl config-set ext_dir /usr/lib/php/${EXT_DATE}/
sudo pecl config-set bin_dir /usr/bin/
sudo pecl config-set php_bin /usr/bin/php${VERSION}
sudo pecl config-set php_suffix ${VERSION}
