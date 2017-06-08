# Start ES service daemon
elasticsearch_service 'elasticsearch'

# ES service library is not very reliable
service 'elasticsearch' do
  action :restart
  retries 3
  retry_delay 3
end
