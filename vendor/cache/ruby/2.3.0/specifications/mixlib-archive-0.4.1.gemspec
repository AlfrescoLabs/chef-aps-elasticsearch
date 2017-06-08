# -*- encoding: utf-8 -*-
# stub: mixlib-archive 0.4.1 ruby lib

Gem::Specification.new do |s|
  s.name = "mixlib-archive".freeze
  s.version = "0.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Chef Software, Inc".freeze]
  s.date = "2017-02-02"
  s.description = "A simple interface to various archive formats".freeze
  s.email = ["info@chef.io".freeze]
  s.homepage = "https://chef.io".freeze
  s.licenses = ["APACHE-2.0".freeze]
  s.rubygems_version = "2.6.10".freeze
  s.summary = "A simple interface to various archive formats".freeze

  s.installed_by_version = "2.6.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.11"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 11.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<chefstyle>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<mixlib-log>.freeze, [">= 0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.11"])
      s.add_dependency(%q<rake>.freeze, ["~> 11.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<chefstyle>.freeze, [">= 0"])
      s.add_dependency(%q<mixlib-log>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.11"])
    s.add_dependency(%q<rake>.freeze, ["~> 11.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<chefstyle>.freeze, [">= 0"])
    s.add_dependency(%q<mixlib-log>.freeze, [">= 0"])
  end
end
