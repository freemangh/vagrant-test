#!/bin/bash
sudo apt-get -y install make python-software-properties
sudo add-apt-repository -y ppa:ondrej/php5
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install php5 libapache2-mod-php5 php5-dev php5-curl php5-gd php5-imagick php5-intl php5-mcrypt php5-memcached php5-mysql php5-xdebug php5-xmlrpc
sed -i 's/\;date.timezone =/date.timezone = Europe\/Kiev\;/g' /etc/php5/cli/php.ini
sed -i 's/\;date.timezone =/date.timezone = Europe\/Kiev\;/g' /etc/php5/apache2/php.ini
echo 'xdebug.max_nesting_level = 250' >> /etc/php5/mods-available/xdebug.ini
service apache2 restart

