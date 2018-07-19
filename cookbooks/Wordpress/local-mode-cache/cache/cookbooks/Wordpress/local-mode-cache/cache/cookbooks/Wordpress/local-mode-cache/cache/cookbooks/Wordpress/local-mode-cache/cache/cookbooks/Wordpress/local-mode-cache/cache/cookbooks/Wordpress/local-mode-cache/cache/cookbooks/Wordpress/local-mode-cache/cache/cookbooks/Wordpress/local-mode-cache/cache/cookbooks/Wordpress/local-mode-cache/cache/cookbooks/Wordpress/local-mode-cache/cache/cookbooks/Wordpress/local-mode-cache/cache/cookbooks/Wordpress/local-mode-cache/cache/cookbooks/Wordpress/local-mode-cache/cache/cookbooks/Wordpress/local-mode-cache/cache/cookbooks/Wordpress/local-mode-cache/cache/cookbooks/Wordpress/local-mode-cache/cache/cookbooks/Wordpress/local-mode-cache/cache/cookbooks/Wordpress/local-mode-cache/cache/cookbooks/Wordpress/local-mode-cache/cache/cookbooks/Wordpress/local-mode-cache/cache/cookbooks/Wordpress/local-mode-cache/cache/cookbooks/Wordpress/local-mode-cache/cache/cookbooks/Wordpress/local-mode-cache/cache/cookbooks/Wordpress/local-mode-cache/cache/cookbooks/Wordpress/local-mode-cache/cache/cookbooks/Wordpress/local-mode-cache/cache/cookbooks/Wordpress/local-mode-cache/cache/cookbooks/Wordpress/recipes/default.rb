#
# Cookbook:: Wordpress
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

file "/home/ansible/test_chef.txt" do
  content "Test file, to ensure chef-solo runs properly"
  action :create
end

execute "update" do
  command "apt-get update && apt-get -y upgrade"
  action :run
end
