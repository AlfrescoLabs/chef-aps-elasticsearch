# Configure ES and fine tune as recommended for APS
elasticsearch_configure 'elasticsearch' do
  configuration ({
    'cluster.name' => node['aps-es']['cluster_name'],
    'node.name' => node['aps-es']['node_name'],
    'node.master' => node['aps-es']['master_node'],
    'node.data' => node['aps-es']['data_node'],
    'index.number_of_shards' => node['aps-es']['number_of_shards'],
    'index.number_of_replicas' => node['aps-es']['number_of_replicas'],
    'bootstrap.memory_lock' => node['aps-es']['memory_lock'],
    'transport.tcp.port' => node['aps-es']['transport_port'],
    'http.port' => node['aps-es']['http_port'],
    'action.disable_close_all_indices' => node['aps-es']['disable']['close_all_indices'],
    'action.disable_delete_all_indices' => node['aps-es']['disable']['delete_all_indices'],
    'action.disable_shutdown' => node['aps-es']['disable']['shutdown'],
    'discovery.zen.ping.multicast.enabled' => (node['aps-es']['multicast_enabled'] if node['aps-es']['multicast_enabled']),
    'discovery.zen.ping.unicast.hosts' => (node['aps-es']['unicast_nodes'].to_s if node['aps-es']['unicast_enabled']),
    'cloud.aws.access_key' => (node['aps-es']['ec2']['access_key'] if node['aps-es']['ec2_discovery_enabled']),
    'cloud.aws.secret_key' => (node['aps-es']['ec2']['secret_key'] if node['aps-es']['ec2_discovery_enabled']),
    'cloud.aws.region' => (node['aps-es']['ec2']['region'] if node['aps-es']['ec2_discovery_enabled']),
    'plugin.mandatory' => ('cloud-aws' if node['aps-es']['ec2_discovery_enabled']),
    'discovery.type' => ('ec2' if node['aps-es']['ec2_discovery_enabled']),
    'discovery.ec2.groups' => (node['aps-es']['ec2']['security_groups'] if node['aps-es']['ec2_discovery_enabled']),
    'discovery.ec2.host_type' => (node['aps-es']['ec2']['host_type'] if node['aps-es']['ec2_discovery_enabled']),
    'discovery.ec2.ping_timeout' => (node['aps-es']['ec2']['ping_timeout'] if node['aps-es']['ec2_discovery_enabled']),
    'discovery.ec2.availability_zones' => (node['aps-es']['ec2']['az'] if node['aps-es']['ec2_discovery_enabled']),
    'network.host' => (node['aps-es']['ec2_discovery_enabled'] ? '_ec2:privateIpv4_' : node['aps-es']['network_host']),
    'discovery.zen.minimum_master_nodes' => node['aps-es']['minimum_master_nodes'],
    'discovery.zen.ping.timeout' => node['aps-es']['ping_timeout'],
    'indices.recovery.max_bytes_per_sec' => node['aps-es']['max_bytes_per_sec'],
    'indices.recovery.concurrent_streams' => node['aps-es']['concurrent_streams'],
    'cluster.routing.allocation.disk.watermark.low' => node['aps-es']['disk_watermark_low'],
    'cluster.routing.allocation.disk.watermark.high' => node['aps-es']['disk_watermark_high'],
    'cluster.info.update.interval' => node['aps-es']['cluster_info_update_internal'],
  })

  path_conf tarball: node['aps-es']['path_conf']
  path_data tarball: node['aps-es']['path_data']
  path_logs tarball: node['aps-es']['path_logs']
  path_pid  tarball: node['aps-es']['path_pid']
  path_plugins	tarball: node['aps-es']['path_plugins']
  path_bin tarball: node['aps-es']['path_bin']
  allocated_memory node['aps-es']['memory']
end

# Start ES service daemon
elasticsearch_service 'elasticsearch'
