control 'Cluster health' do
  impact 1.0
  title 'Check for cluster health'
  desc 'Determine if elasticsearch cluster is healthy and green'
  describe command("curl -s -XGET 'localhost:9200/_cluster/health' | python -c 'import json,sys; result=json.load(sys.stdin);print result[\"status\"]'") do
    its(:stdout) { should match(/green/) }
  end
end
