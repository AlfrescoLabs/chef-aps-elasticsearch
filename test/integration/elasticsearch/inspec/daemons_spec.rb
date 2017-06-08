control 'ElasticSearch Service' do
  impact 1.0
  title 'Check for ElasticSearch Service'
  desc 'Determine if ElasticSearch Service is running or not'
  describe service('elasticsearch') do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end
end
