# -*- encoding: utf-8 -*-
# stub: foodcritic 10.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "foodcritic".freeze
  s.version = "10.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Andrew Crump".freeze]
  s.date = "2017-03-31"
  s.description = "Lint tool for Chef cookbooks.".freeze
  s.executables = ["foodcritic".freeze]
  s.files = ["bin/foodcritic".freeze]
  s.homepage = "http://foodcritic.io".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.2".freeze)
  s.rubygems_version = "2.6.10".freeze
  s.summary = "foodcritic-10.2.2".freeze

  s.installed_by_version = "2.6.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<cucumber-core>.freeze, [">= 1.3"])
      s.add_runtime_dependency(%q<nokogiri>.freeze, ["< 2.0", ">= 1.5"])
      s.add_runtime_dependency(%q<rake>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<treetop>.freeze, ["~> 1.4"])
      s.add_runtime_dependency(%q<yajl-ruby>.freeze, ["~> 1.1"])
      s.add_runtime_dependency(%q<erubis>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<rufus-lru>.freeze, ["~> 1.0"])
    else
      s.add_dependency(%q<cucumber-core>.freeze, [">= 1.3"])
      s.add_dependency(%q<nokogiri>.freeze, ["< 2.0", ">= 1.5"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<treetop>.freeze, ["~> 1.4"])
      s.add_dependency(%q<yajl-ruby>.freeze, ["~> 1.1"])
      s.add_dependency(%q<erubis>.freeze, [">= 0"])
      s.add_dependency(%q<rufus-lru>.freeze, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<cucumber-core>.freeze, [">= 1.3"])
    s.add_dependency(%q<nokogiri>.freeze, ["< 2.0", ">= 1.5"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<treetop>.freeze, ["~> 1.4"])
    s.add_dependency(%q<yajl-ruby>.freeze, ["~> 1.1"])
    s.add_dependency(%q<erubis>.freeze, [">= 0"])
    s.add_dependency(%q<rufus-lru>.freeze, ["~> 1.0"])
  end
end
