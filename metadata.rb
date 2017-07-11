name             'aps-elasticsearch'
maintainer       'Alfresco Software Ltd'
maintainer_email 'devops@alfresco.com'
license          'All rights reserved'
description      'Chef Alfresco Process Services ElasticSearch cookbook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
issues_url 'https://github.com/Alfresco/chef-aps-elasticsearch/issues'
source_url 'https://github.com/Alfresco/chef-aps-elasticsearch'
version '1.0.0'

chef_version '~> 12'
supports 'centos', '>= 7.0'

# Resolved by Berkshelf, not present in Supermarket or forked
depends 'java', '>= 1.31.0'
depends 'elasticsearch', '~> 2.0.0'
depends 'python', '~> 1.4.6'
