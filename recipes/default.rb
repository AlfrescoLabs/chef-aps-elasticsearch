#
# Cookbook Name:: chef-aps-elasticsearch
# Recipe:: default
#
# Copyright (C) 2017 Alfresco Software Ltd

include_recipe 'java::default'
include_recipe 'aps-elasticsearch::install-elasticsearch'
include_recipe 'aps-elasticsearch::configure-elasticsearch'
include_recipe 'aps-elasticsearch::plugin-install'
include_recipe 'aps-elasticsearch::restart-elasticsearch'
include_recipe 'aps-elasticsearch::create-snapshot-repo' if (node['aps-es']['ec2_discovery_enabled']) && (node['aps-es']['master_node'])
