# Create ES User
elasticsearch_user 'elasticsearch' do
  username 'elasticsearch'
  groupname 'elasticsearch'
  shell '/bin/bash'
  comment 'Elasticsearch User'

  action :create
end

# Install ES via tarball as rpms are hard to find for older versions
elasticsearch_install node['aps-es']['cluster_name'] do
  type :tarball
  version node['aps-es']['es_version']
  download_url node['aps-es']['download_url']
  download_checksum node['aps-es']['sha256']
  dir	tarball: node['aps-es']['tarball_path']

  action :install
end

# Install ElasticSearch python module
include_recipe 'python::pip'

node['aps-es']['python_modules'].each do |pkg|
  python_pip pkg do
    action :install
  end
end
