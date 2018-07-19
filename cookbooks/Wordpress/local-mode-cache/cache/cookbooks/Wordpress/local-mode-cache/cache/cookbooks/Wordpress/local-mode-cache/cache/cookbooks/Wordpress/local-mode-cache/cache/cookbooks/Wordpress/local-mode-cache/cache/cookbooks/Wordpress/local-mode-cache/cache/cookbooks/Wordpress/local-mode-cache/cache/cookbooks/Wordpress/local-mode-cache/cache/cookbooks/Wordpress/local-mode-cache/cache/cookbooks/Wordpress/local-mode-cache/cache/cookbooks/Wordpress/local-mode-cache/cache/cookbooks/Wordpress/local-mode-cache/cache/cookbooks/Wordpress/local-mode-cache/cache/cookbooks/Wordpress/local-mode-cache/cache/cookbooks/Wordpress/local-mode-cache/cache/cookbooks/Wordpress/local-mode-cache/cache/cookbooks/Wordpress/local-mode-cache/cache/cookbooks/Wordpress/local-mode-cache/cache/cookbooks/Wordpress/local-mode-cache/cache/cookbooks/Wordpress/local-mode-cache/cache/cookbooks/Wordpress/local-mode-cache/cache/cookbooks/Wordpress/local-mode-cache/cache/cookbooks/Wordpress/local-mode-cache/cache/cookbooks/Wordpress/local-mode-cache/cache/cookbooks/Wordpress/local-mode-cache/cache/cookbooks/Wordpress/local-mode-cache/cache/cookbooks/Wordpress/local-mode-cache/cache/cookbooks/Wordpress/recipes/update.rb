#
# Cookbook name:: Wordpress
# Recepie:: update
#
#
execute "update" do
  command "apt-get update && apt-get -y upgrade"
  action :run
end
