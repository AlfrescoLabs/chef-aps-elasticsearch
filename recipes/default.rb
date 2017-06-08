#
# Cookbook Name:: chef-aps-elasticsearch
# Recipe:: default
#
# Copyright (C) 2017 Alfresco Software Ltd

include_recipe 'java::default'
include_recipe 'aps-elasticsearch::install-elasticsearch'
include_recipe 'aps-elasticsearch::configure-elasticsearch'
include_recipe 'aps-elasticsearch::start-elasticsearch'
