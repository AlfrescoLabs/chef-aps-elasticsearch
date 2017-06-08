# Main ElasticSearch information
default['aps-es']['es_version'] = '1.7.3'
default['aps-es']['tarball_path'] = '/usr/local'
default['aps-es']['download_url'] = "https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-#{node['aps-es']['es_version']}.tar.gz"
default['aps-es']['sha256'] = 'af517611493374cfb2daa8897ae17e63e2efea4d0377d316baa351c1776a2bca'

# Cluster configuration
default['aps-es']['cluster_name'] = 'aps-elasticsearch'
default['aps-es']['node_name'] = node.name
default['aps-es']['http_port'] = '9200'
default['aps-es']['memory'] = '512m'
default['aps-es']['path_conf'] = '/etc/elasticsearch'
default['aps-es']['path_data'] = '/data/elasticsearch'
default['aps-es']['path_logs'] = '/var/log/elasticsearch'
default['aps-es']['path_pid'] = '/var/run/elasticsearch'
default['aps-es']['path_plugins'] = '/usr/local/elasticsearch/plugins'
default['aps-es']['path_bin'] = '/usr/local/bin'
