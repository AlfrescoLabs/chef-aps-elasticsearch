# -*- encoding: utf-8 -*-
# stub: retryable 2.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "retryable".freeze
  s.version = "2.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nikita Fedyashev".freeze, "Carlo Zottmann".freeze, "Chu Yeow".freeze]
  s.date = "2016-07-13"
  s.description = "Retryable#retryable, allow for retrying of code blocks.".freeze
  s.email = "nfedyashev@gmail.com".freeze
  s.homepage = "http://github.com/nfedyashev/retryable".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.10".freeze
  s.summary = "Retryable#retryable, allow for retrying of code blocks.".freeze

  s.installed_by_version = "2.6.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
  end
end
