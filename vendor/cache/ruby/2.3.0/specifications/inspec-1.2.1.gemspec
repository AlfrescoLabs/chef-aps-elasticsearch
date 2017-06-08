# -*- encoding: utf-8 -*-
# stub: inspec 1.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "inspec".freeze
  s.version = "1.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Dominik Richter".freeze]
  s.date = "2016-10-15"
  s.description = "InSpec provides a framework for creating end-to-end infrastructure tests. You can use it for integration or even compliance testing. Create fully portable test profiles and use them in your workflow to ensure stability and security. Integrate InSpec in your change lifecycle for local testing, CI/CD, and deployment verification.".freeze
  s.email = ["dominik.richter@gmail.com".freeze]
  s.executables = ["inspec".freeze]
  s.files = ["bin/inspec".freeze]
  s.homepage = "https://github.com/chef/inspec".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.10".freeze
  s.summary = "Infrastructure and compliance testing.".freeze

  s.installed_by_version = "2.6.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<train>.freeze, ["< 1.0", ">= 0.20.1"])
      s.add_runtime_dependency(%q<thor>.freeze, ["~> 0.19"])
      s.add_runtime_dependency(%q<json>.freeze, ["< 3.0", ">= 1.8"])
      s.add_runtime_dependency(%q<rainbow>.freeze, ["~> 2"])
      s.add_runtime_dependency(%q<method_source>.freeze, ["~> 0.8"])
      s.add_runtime_dependency(%q<rubyzip>.freeze, ["~> 1.1"])
      s.add_runtime_dependency(%q<rspec>.freeze, ["~> 3"])
      s.add_runtime_dependency(%q<rspec-its>.freeze, ["~> 1.2"])
      s.add_runtime_dependency(%q<pry>.freeze, ["~> 0"])
      s.add_runtime_dependency(%q<hashie>.freeze, ["~> 3.4"])
      s.add_runtime_dependency(%q<mixlib-log>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<sslshake>.freeze, ["~> 1"])
      s.add_runtime_dependency(%q<parallel>.freeze, ["~> 1.9"])
    else
      s.add_dependency(%q<train>.freeze, ["< 1.0", ">= 0.20.1"])
      s.add_dependency(%q<thor>.freeze, ["~> 0.19"])
      s.add_dependency(%q<json>.freeze, ["< 3.0", ">= 1.8"])
      s.add_dependency(%q<rainbow>.freeze, ["~> 2"])
      s.add_dependency(%q<method_source>.freeze, ["~> 0.8"])
      s.add_dependency(%q<rubyzip>.freeze, ["~> 1.1"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3"])
      s.add_dependency(%q<rspec-its>.freeze, ["~> 1.2"])
      s.add_dependency(%q<pry>.freeze, ["~> 0"])
      s.add_dependency(%q<hashie>.freeze, ["~> 3.4"])
      s.add_dependency(%q<mixlib-log>.freeze, [">= 0"])
      s.add_dependency(%q<sslshake>.freeze, ["~> 1"])
      s.add_dependency(%q<parallel>.freeze, ["~> 1.9"])
    end
  else
    s.add_dependency(%q<train>.freeze, ["< 1.0", ">= 0.20.1"])
    s.add_dependency(%q<thor>.freeze, ["~> 0.19"])
    s.add_dependency(%q<json>.freeze, ["< 3.0", ">= 1.8"])
    s.add_dependency(%q<rainbow>.freeze, ["~> 2"])
    s.add_dependency(%q<method_source>.freeze, ["~> 0.8"])
    s.add_dependency(%q<rubyzip>.freeze, ["~> 1.1"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3"])
    s.add_dependency(%q<rspec-its>.freeze, ["~> 1.2"])
    s.add_dependency(%q<pry>.freeze, ["~> 0"])
    s.add_dependency(%q<hashie>.freeze, ["~> 3.4"])
    s.add_dependency(%q<mixlib-log>.freeze, [">= 0"])
    s.add_dependency(%q<sslshake>.freeze, ["~> 1"])
    s.add_dependency(%q<parallel>.freeze, ["~> 1.9"])
  end
end
