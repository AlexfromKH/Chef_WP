# Install the PHP Packages
# Ubuntu 18.04
#
php_package = ["php-curl", "php-gd", "php-mbstring", "php-xml", "php-xmlrpc" ]

php_package.each do |pkg|
  package pkg do
    action :install
  end
end
