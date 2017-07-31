source 'https://rubygems.org'

# Used by Travis

gem 'berkshelf', '~> 5.1.0'
gem 'chef', '~> 12.19.36'
gem 'chef-zero', '5.3.2'
gem 'chefspec', '~> 5.3.0'
gem 'cookstyle', '~> 1.2.0'
gem 'foodcritic', '~> 10.2.0'
gem 'inspec', '~>1.2.1'
gem 'rake', '~> 12.0.0'
gem 'rspec', '~> 3.5.0'
gem 'simplecov', '~> 0.12.0'
gem 'simplecov-rcov', '~> 0.2.3'
gem 'yamllint', '~> 0.0.9'
gem 'coveralls', require: false
gem 'hitimes', '~> 1.2.5'
gem 'molinillo', '~> 0.5.7'

group :docker do
  gem 'kitchen-docker', '~> 2.6.0'
  gem 'kitchen-inspec', '~> 0.16.1'
  gem 'test-kitchen', '~> 1.4'
end

group :vagrant do
  gem 'kitchen-vagrant', '~> 0.18'
  gem 'vagrant-wrapper', '~> 2.0'
end

group :development do
  gem 'guard'
  gem 'guard-foodcritic', '~> 3.0.0'
  gem 'guard-rspec'
  gem 'guard-rubocop'
end
