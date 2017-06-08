# Configure ES and fine tune as recommended for APS
elasticsearch_configure 'elasticsearch' do

  configuration ({
    'cluster.name' => node['aps-es']['cluster_name'],
    'node.name' => node['aps-es']['node_name'],
    'http.port' => node['aps-es']['http_port']
  })

  path_conf     tarball: node['aps-es']['path_conf']
  path_data     tarball: node['aps-es']['path_data']
  path_logs     tarball: node['aps-es']['path_logs']
  path_pid      tarball: node['aps-es']['path_pid']
  path_plugins	tarball: node['aps-es']['path_plugins']
  path_bin      tarball: node['aps-es']['path_bin']
  allocated_memory node['aps-es']['memory']

end
