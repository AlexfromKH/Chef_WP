#
# Cookbook:: Wordpress
# Recipe:: database
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
# Install and setup a mysql database for Wordpress.
#
mysql_service 'default' do
  port '3306'
  version '5.5'
  initial_root_password '1234'
  action [:create, :start]
end

mysql_client 'default' do
  action :create
end
