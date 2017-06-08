# -*- encoding: utf-8 -*-
# stub: vagrant-wrapper 2.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "vagrant-wrapper".freeze
  s.version = "2.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["BinaryBabel OSS".freeze]
  s.date = "2015-08-04"
  s.description = "Since Vagrant 1.1+ is no longer distributed via Gems, vagrant-wrapper allows you to require and interact\nwith the newer package versions via your Gemfile, shell, or Ruby code. It allows the newer packaged\nversion to take precedence even if the older Vagrant gem remains installed.\nSee https://github.com/org-binbab/gem-vagrant-wrapper for more details.\n".freeze
  s.email = ["projects@binarybabel.org".freeze]
  s.executables = ["vagrant".freeze]
  s.files = ["bin/vagrant".freeze]
  s.homepage = "http://code.binbab.org".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.10".freeze
  s.summary = "Wrapper/binstub for os packaged version of Vagrant.".freeze

  s.installed_by_version = "2.6.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<vagrant>.freeze, ["= 1.0.7"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<vagrant>.freeze, ["= 1.0.7"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<vagrant>.freeze, ["= 1.0.7"])
  end
end
