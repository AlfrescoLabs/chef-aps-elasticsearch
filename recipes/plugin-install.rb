# Install cloud-aws plugin

# There is an issue with elasticsearch cookbook library as it use 'install' instead of '--install'
# elasticsearch_plugin 'cloud-aws' do
#   plugin_name node['aps-es']['plugin']['name']
#   action :install
#   only_if { node['aps-es']['ec2_discovery_enabled'] }
# end

execute 'cloud-aws-plugin' do
  command "#{node['aps-es']['path_bin']}/plugin --install #{node['aps-es']['plugin']['name']}"
  only_if { node['aps-es']['ec2_discovery_enabled'] }
  not_if "#{node['aps-es']['path_bin']}/plugin --list | grep 'cloud-aws' 2>&1 >/dev/null"
end
