# -*- encoding: utf-8 -*-
# stub: guard-foodcritic 3.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "guard-foodcritic".freeze
  s.version = "3.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Chris Griego".freeze, "James FitzGibbon".freeze]
  s.date = "2017-03-16"
  s.description = "Guard::Foodcritic automatically runs foodcritic.".freeze
  s.email = ["cgriego@gmail.com".freeze, "james.i.fitzgibbon@nordstrom.com".freeze]
  s.homepage = "https://github.com/Nordstrom/guard-foodcritic".freeze
  s.rubygems_version = "2.6.10".freeze
  s.summary = "Guard::Foodcritic automatically runs foodcritic.".freeze

  s.installed_by_version = "2.6.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<guard>.freeze, ["~> 2.12"])
      s.add_runtime_dependency(%q<guard-compat>.freeze, ["~> 1.2"])
      s.add_runtime_dependency(%q<foodcritic>.freeze, [">= 8"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 12.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.4"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.47.1"])
    else
      s.add_dependency(%q<guard>.freeze, ["~> 2.12"])
      s.add_dependency(%q<guard-compat>.freeze, ["~> 1.2"])
      s.add_dependency(%q<foodcritic>.freeze, [">= 8"])
      s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.4"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.47.1"])
    end
  else
    s.add_dependency(%q<guard>.freeze, ["~> 2.12"])
    s.add_dependency(%q<guard-compat>.freeze, ["~> 1.2"])
    s.add_dependency(%q<foodcritic>.freeze, [">= 8"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.4"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.47.1"])
  end
end
