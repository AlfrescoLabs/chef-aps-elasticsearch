# -*- encoding: utf-8 -*-
# stub: buff-extensions 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "buff-extensions".freeze
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jamie Winsor".freeze]
  s.date = "2016-08-03"
  s.description = "Extensions to Core Ruby classes".freeze
  s.email = ["jamie@vialstudios.com".freeze]
  s.homepage = "https://github.com/RiotGames/buff-extensions".freeze
  s.licenses = ["Apache 2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.0".freeze)
  s.rubygems_version = "2.6.10".freeze
  s.summary = "Extensions to Core Ruby classes".freeze

  s.installed_by_version = "2.6.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<buff-ruby_engine>.freeze, ["~> 0.1"])
      s.add_development_dependency(%q<thor>.freeze, ["~> 0.18.0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<fuubar>.freeze, [">= 0"])
      s.add_development_dependency(%q<guard>.freeze, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<guard-spork>.freeze, [">= 0"])
      s.add_development_dependency(%q<spork>.freeze, [">= 0"])
    else
      s.add_dependency(%q<buff-ruby_engine>.freeze, ["~> 0.1"])
      s.add_dependency(%q<thor>.freeze, ["~> 0.18.0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<fuubar>.freeze, [">= 0"])
      s.add_dependency(%q<guard>.freeze, [">= 0"])
      s.add_dependency(%q<guard-rspec>.freeze, [">= 0"])
      s.add_dependency(%q<guard-spork>.freeze, [">= 0"])
      s.add_dependency(%q<spork>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<buff-ruby_engine>.freeze, ["~> 0.1"])
    s.add_dependency(%q<thor>.freeze, ["~> 0.18.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<fuubar>.freeze, [">= 0"])
    s.add_dependency(%q<guard>.freeze, [">= 0"])
    s.add_dependency(%q<guard-rspec>.freeze, [">= 0"])
    s.add_dependency(%q<guard-spork>.freeze, [">= 0"])
    s.add_dependency(%q<spork>.freeze, [">= 0"])
  end
end
