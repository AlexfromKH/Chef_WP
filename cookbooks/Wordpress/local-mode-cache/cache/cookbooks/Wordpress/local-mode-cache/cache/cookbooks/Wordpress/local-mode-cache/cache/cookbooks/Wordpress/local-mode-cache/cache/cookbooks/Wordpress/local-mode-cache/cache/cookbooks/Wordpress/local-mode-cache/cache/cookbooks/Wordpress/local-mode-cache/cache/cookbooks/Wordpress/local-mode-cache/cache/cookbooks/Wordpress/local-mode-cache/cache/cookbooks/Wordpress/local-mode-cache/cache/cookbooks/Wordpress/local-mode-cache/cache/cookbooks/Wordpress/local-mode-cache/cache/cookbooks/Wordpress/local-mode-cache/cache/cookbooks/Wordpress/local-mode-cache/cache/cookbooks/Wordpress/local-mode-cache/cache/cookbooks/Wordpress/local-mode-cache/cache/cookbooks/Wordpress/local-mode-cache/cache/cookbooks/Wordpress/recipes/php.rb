# Install the PHP Packages
# Ubuntu 18.04
#
php_package = ["php-curl", "php-gd", "php-mbstring", "php-xml", "php-xmlrpc" ]

php_package.package.each { |name|
	action :install
}
