# Create/Register to an S3 repository where ES data should be backed up and restored from
http_request 'create an s3 repository' do
  url "http://#{node['ipaddress']}:#{node['aps-es']['http_port']}/_snapshot/#{node['aps-es']['s3']['reponame']}"
  message ({:type => 's3', :settings => {:bucket => node['aps-es']['s3']['bucket'], :region => node['aps-es']['s3']['region']}}.to_json)
  headers({'Content-Type' => 'application/json'})
  action :put
end
