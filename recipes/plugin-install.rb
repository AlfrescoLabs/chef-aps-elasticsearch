# Install cloud-aws plugin

# There is an issue with elasticsearch cookbook library as it use 'install' instead of '--install'
# elasticsearch_plugin 'cloud-aws' do
#   plugin_name 'elasticsearch/cloud-aws/2.4.5'
#   url 'https://download.elastic.co/elasticsearch/release/org/elasticsearch/plugin/cloud-aws/2.4.5/cloud-aws-2.4.5.zip'
#   action :install
#   only_if { node['aps-es']['ec2_discovery_enabled'] }
# end

execute 'cloud-aws-plugin' do
  command "#{node['aps-es']['path_bin']}/plugin --install #{node['aps-es']['plugin']['name']} --url #{node['aps-es']['plugin']['url']} --verbose"
  only_if { node['aps-es']['ec2_discovery_enabled'] }
  not_if "#{node['aps-es']['path_bin']}/plugin --list | grep 'cloud-aws' 2>&1 >/dev/null"
end
