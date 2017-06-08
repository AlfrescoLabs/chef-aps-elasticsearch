#!/usr/bin/env rake
require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

RSpec::Core::RakeTask.new

RuboCop::RakeTask.new do |rubocop|
  rubocop.options = ['-D']
end

desc 'Run all style checks and unit tests'
task test: [:rubocop, :spec]

task default: :test
