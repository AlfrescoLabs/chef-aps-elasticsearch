# Create/Register to an S3 repository where ES data should be backed up and restored from
# Enable retry & retry_delay as to give ES some extra time to come up if it's a new cluster
http_request 'create an s3 repository' do
  url "http://#{node['ipaddress']}:#{node['aps-es']['http_port']}/_snapshot/#{node['aps-es']['s3']['reponame']}"
  message (
    {
      type: 's3',
      settings:
        {
          bucket: node['aps-es']['s3']['bucket'],
          region: node['aps-es']['s3']['region'],
          base_path: node['aps-es']['s3']['base_path'],
        },
    }.to_json
  )

  headers (
    {
      'Content-Type' => 'application/json',
    }
  )
  retries 5
  retry_delay 5
  action :put
end
