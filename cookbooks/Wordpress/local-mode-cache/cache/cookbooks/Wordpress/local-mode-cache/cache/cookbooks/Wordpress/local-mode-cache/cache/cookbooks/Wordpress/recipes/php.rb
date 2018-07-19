# Install the PHP Packages
# Ubuntu 18.04
#
php_package = ["php-fpm", "php-curl", "php-mysql", "php-xml", "nginx" ]

php_package.each do |pkg|
  package pkg do
    action :install
  end
end

# Start ngix service
#
service 'php7.2-fpm' do
  action [ :enable, :start ]
end
