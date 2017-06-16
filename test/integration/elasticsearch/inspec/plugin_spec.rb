# control 'Cloud-aws plugin' do
# impact 1.0
# title 'Check for cloud-aws plugin'
# desc 'Determine if cloud-aws plugin was installed successfully'
# describe command('/usr/local/elasticsearch/bin/plugin --list') do
# its(:stdout) { should match(/cloud-aws/) }
# end
# end
