control 'ElasticSearch Version' do
  impact 1.0
  title 'Check for ElasticSearch Version'
  desc 'Determine if ElasticSearch version is 1.7.3'
  describe command("sleep 10 && curl -s -XGET 'localhost:9200' | python -c 'import json,sys; result=json.load(sys.stdin);print result[\"version\"][\"number\"]'") do
    its(:stdout) { should match(/1.7.3/) }
  end
end
