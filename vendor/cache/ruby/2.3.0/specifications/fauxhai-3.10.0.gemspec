# -*- encoding: utf-8 -*-
# stub: fauxhai 3.10.0 ruby lib

Gem::Specification.new do |s|
  s.name = "fauxhai".freeze
  s.version = "3.10.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Seth Vargo".freeze]
  s.date = "2016-10-30"
  s.description = "Easily mock out ohai data".freeze
  s.email = ["sethvargo@gmail.com".freeze]
  s.executables = ["fauxhai".freeze]
  s.files = ["bin/fauxhai".freeze]
  s.homepage = "https://github.com/customink/fauxhai".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.2".freeze)
  s.rubygems_version = "2.6.10".freeze
  s.summary = "Fauxhai provides an easy way to mock out your ohai data for testing with chefspec!".freeze

  s.installed_by_version = "2.6.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<net-ssh>.freeze, [">= 0"])
      s.add_development_dependency(%q<chef>.freeze, ["~> 12.0"])
      s.add_development_dependency(%q<ohai>.freeze, ["~> 8.5"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<net-ssh>.freeze, [">= 0"])
      s.add_dependency(%q<chef>.freeze, ["~> 12.0"])
      s.add_dependency(%q<ohai>.freeze, ["~> 8.5"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<net-ssh>.freeze, [">= 0"])
    s.add_dependency(%q<chef>.freeze, ["~> 12.0"])
    s.add_dependency(%q<ohai>.freeze, ["~> 8.5"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
