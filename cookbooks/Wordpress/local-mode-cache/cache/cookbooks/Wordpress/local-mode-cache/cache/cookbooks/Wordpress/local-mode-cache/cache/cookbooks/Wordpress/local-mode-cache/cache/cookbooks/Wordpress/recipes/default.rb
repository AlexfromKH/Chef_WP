#
# Cookbook name:: Wordpress
# Recepie:: update
#
#
execute "update" do
  case node['platform']
  when 'debian', 'ubuntu'
    command "apt-get update && apt-get -y upgrade"
  when 'centos','fedora','redhat'
    command "yum update && yum -y upgrade"
  end
  action :run
end

# Notify that update is successful
#execute "notify" do
#  command "echo \"APT UPDATE: COMPLETE\""
#  sleep (5)
#end
