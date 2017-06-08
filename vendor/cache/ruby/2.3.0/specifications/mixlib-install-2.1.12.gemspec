# -*- encoding: utf-8 -*-
# stub: mixlib-install 2.1.12 ruby lib

Gem::Specification.new do |s|
  s.name = "mixlib-install".freeze
  s.version = "2.1.12"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Thom May".freeze, "Patrick Wright".freeze]
  s.date = "2017-02-02"
  s.email = ["thom@chef.io".freeze, "patrick@chef.io".freeze]
  s.executables = ["mixlib-install".freeze]
  s.files = ["bin/mixlib-install".freeze]
  s.homepage = "https://chef.io".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.10".freeze
  s.summary = "A mixin to help with omnitruck installs".freeze

  s.installed_by_version = "2.6.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<artifactory>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<mixlib-shellout>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<mixlib-versioning>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<thor>.freeze, [">= 0"])
      s.add_development_dependency(%q<aruba>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<chefstyle>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rb-readline>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_development_dependency(%q<vcr>.freeze, [">= 0"])
      s.add_development_dependency(%q<webmock>.freeze, ["~> 1.0"])
    else
      s.add_dependency(%q<artifactory>.freeze, [">= 0"])
      s.add_dependency(%q<mixlib-shellout>.freeze, [">= 0"])
      s.add_dependency(%q<mixlib-versioning>.freeze, [">= 0"])
      s.add_dependency(%q<thor>.freeze, [">= 0"])
      s.add_dependency(%q<aruba>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<chefstyle>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rb-readline>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_dependency(%q<vcr>.freeze, [">= 0"])
      s.add_dependency(%q<webmock>.freeze, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<artifactory>.freeze, [">= 0"])
    s.add_dependency(%q<mixlib-shellout>.freeze, [">= 0"])
    s.add_dependency(%q<mixlib-versioning>.freeze, [">= 0"])
    s.add_dependency(%q<thor>.freeze, [">= 0"])
    s.add_dependency(%q<aruba>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<chefstyle>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rb-readline>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<vcr>.freeze, [">= 0"])
    s.add_dependency(%q<webmock>.freeze, ["~> 1.0"])
  end
end
