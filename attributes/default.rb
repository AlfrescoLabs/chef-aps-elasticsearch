url_prefix = 'https://download.elastic.co/elasticsearch'

# Main ElasticSearch information
default['aps-es']['es_version'] = '1.7.3'
default['aps-es']['tarball_path'] = '/usr/local'
default['aps-es']['download_url'] = "#{url_prefix}/elasticsearch/elasticsearch-#{node['aps-es']['es_version']}.tar.gz"
default['aps-es']['sha256'] = 'af517611493374cfb2daa8897ae17e63e2efea4d0377d316baa351c1776a2bca'

# Cluster configuration
default['aps-es']['cluster_name'] = 'aps-elasticsearch'
default['aps-es']['node_name'] = node.name
default['aps-es']['memory'] = '512m'
default['aps-es']['memory_lock'] = true

# Path configuration
default['aps-es']['path_conf'] = '/etc/elasticsearch'
default['aps-es']['path_data'] = '/data/elasticsearch'
default['aps-es']['path_logs'] = '/var/log/elasticsearch'
default['aps-es']['path_pid'] = '/var/run/elasticsearch'
default['aps-es']['path_plugins'] = '/etc/elasticsearch/plugins'
default['aps-es']['path_bin'] = '/usr/local/bin'

# Node roles
default['aps-es']['master_node'] = true
default['aps-es']['data_node'] = true

# Shards and Replicas (for a single node cluster adjust shards to '1' and replicas to '0')
# Otherwise a single node cluster will indifinitely be in a yellow state
default['aps-es']['number_of_shards'] = '5'
default['aps-es']['number_of_replicas'] = '1'

# Networking
default['aps-es']['http_port'] = '9200'
default['aps-es']['transport_port'] = '9300'
default['aps-es']['network_host'] = '0.0.0.0'

# Discovery of cluster: Unicast or multicast or EC2 Discovery ?
default['aps-es']['multicast_enabled'] = true
default['aps-es']['unicast_enabled'] = false
default['aps-es']['ec2_discovery_enabled'] = false
default['aps-es']['ping_timeout'] = '5s'

# EC2 parameters if ec2_discovery_enabled
default['aps-es']['ec2']['access_key'] = ''
default['aps-es']['ec2']['secret_key'] = ''
default['aps-es']['ec2']['region'] = ''
default['aps-es']['ec2']['security_groups'] = ['']
default['aps-es']['ec2']['az'] = ['']
default['aps-es']['ec2']['host_type'] = 'private_ip'
default['aps-es']['ec2']['ping_timeout'] = '10s'

# ElasticSearch cloud-aws plugin when ec2_discovery_enabled
default['aps-es']['plugin']['name'] = 'elasticsearch/elasticsearch-cloud-aws/2.7.1'

# By default unicast node communicate each other on TCP 9300 so "host1" or "host1:9300" is OK
# If a cluster node is listening other other than 9300 then "host1:<port_no>" or ex: "host1:9301"
default['aps-es']['unicast_nodes'] = ["#{node['aps-es']['network_host']}:#{node['aps-es']['transport_port']}"]

# Avoid split-brain scenarios.  This has to be (master_eligible_nodes / 2) + 1
# In other words, if there are three master-eligible nodes, then minimum master nodes should be set to (3 / 2) + 1 or 2
default['aps-es']['minimum_master_nodes'] = '1'

# Guard cluster against accidents
default['aps-es']['disable']['close_all_indices'] = true
default['aps-es']['disable']['delete_all_indices'] = true
default['aps-es']['disable']['shutdown'] = true

# Index recovery
default['aps-es']['concurrent_streams'] = '5'
default['aps-es']['max_bytes_per_sec'] = '100mb'

# Don't allow ES to fill up the whole disk
default['aps-es']['disk_watermark_low'] = '85%'
default['aps-es']['disk_watermark_high'] = '95%'
default['aps-es']['cluster_info_update_internal'] = '30s'

# Retention period for logrotate to keep ES logs
default['aps-es']['eslogs_retention'] = '3'
