# -*- encoding: utf-8 -*-
# stub: buff-ignore 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "buff-ignore".freeze
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Seth Vargo".freeze]
  s.date = "2016-08-03"
  s.description = "Parse ignore files with Ruby".freeze
  s.email = ["sethvargo@gmail.com".freeze]
  s.homepage = "https://github.com/sethvargo/buff-ignore".freeze
  s.licenses = ["Apache 2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1".freeze)
  s.rubygems_version = "2.6.10".freeze
  s.summary = "A Ruby library for parsing lists of files and applying pattern matching exclusion (such as .gitignore)".freeze

  s.installed_by_version = "2.6.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<cane>.freeze, ["~> 2.6"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.13"])
      s.add_development_dependency(%q<spork>.freeze, ["~> 0.9"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<cane>.freeze, ["~> 2.6"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.13"])
      s.add_dependency(%q<spork>.freeze, ["~> 0.9"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<cane>.freeze, ["~> 2.6"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.13"])
    s.add_dependency(%q<spork>.freeze, ["~> 0.9"])
  end
end
