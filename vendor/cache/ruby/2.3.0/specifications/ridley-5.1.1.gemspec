# -*- encoding: utf-8 -*-
# stub: ridley 5.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "ridley".freeze
  s.version = "5.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jamie Winsor".freeze, "Kyle Allan".freeze]
  s.date = "2017-05-26"
  s.description = "A reliable Chef API client with a clean syntax".freeze
  s.email = ["jamie@vialstudios.com".freeze, "kallan@riotgames.com".freeze]
  s.homepage = "https://github.com/berkshelf/ridley".freeze
  s.licenses = ["Apache 2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2".freeze)
  s.rubygems_version = "2.6.10".freeze
  s.summary = "A reliable Chef API client with a clean syntax".freeze

  s.installed_by_version = "2.6.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<addressable>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<varia_model>.freeze, ["~> 0.6"])
      s.add_runtime_dependency(%q<buff-config>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<buff-extensions>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<buff-ignore>.freeze, ["~> 1.2"])
      s.add_runtime_dependency(%q<buff-shell_out>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<celluloid>.freeze, ["~> 0.16.0"])
      s.add_runtime_dependency(%q<celluloid-io>.freeze, ["~> 0.16.1"])
      s.add_runtime_dependency(%q<chef-config>.freeze, [">= 12.5.0"])
      s.add_runtime_dependency(%q<erubis>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<faraday>.freeze, ["~> 0.9"])
      s.add_runtime_dependency(%q<hashie>.freeze, ["< 4.0.0", ">= 2.0.2"])
      s.add_runtime_dependency(%q<httpclient>.freeze, ["~> 2.7"])
      s.add_runtime_dependency(%q<json>.freeze, [">= 1.7.7"])
      s.add_runtime_dependency(%q<mixlib-authentication>.freeze, [">= 1.3.0"])
      s.add_runtime_dependency(%q<retryable>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<semverse>.freeze, ["~> 2.0"])
      s.add_development_dependency(%q<buff-ruby_engine>.freeze, ["~> 0.1"])
    else
      s.add_dependency(%q<addressable>.freeze, [">= 0"])
      s.add_dependency(%q<varia_model>.freeze, ["~> 0.6"])
      s.add_dependency(%q<buff-config>.freeze, ["~> 2.0"])
      s.add_dependency(%q<buff-extensions>.freeze, ["~> 2.0"])
      s.add_dependency(%q<buff-ignore>.freeze, ["~> 1.2"])
      s.add_dependency(%q<buff-shell_out>.freeze, ["~> 1.0"])
      s.add_dependency(%q<celluloid>.freeze, ["~> 0.16.0"])
      s.add_dependency(%q<celluloid-io>.freeze, ["~> 0.16.1"])
      s.add_dependency(%q<chef-config>.freeze, [">= 12.5.0"])
      s.add_dependency(%q<erubis>.freeze, [">= 0"])
      s.add_dependency(%q<faraday>.freeze, ["~> 0.9"])
      s.add_dependency(%q<hashie>.freeze, ["< 4.0.0", ">= 2.0.2"])
      s.add_dependency(%q<httpclient>.freeze, ["~> 2.7"])
      s.add_dependency(%q<json>.freeze, [">= 1.7.7"])
      s.add_dependency(%q<mixlib-authentication>.freeze, [">= 1.3.0"])
      s.add_dependency(%q<retryable>.freeze, ["~> 2.0"])
      s.add_dependency(%q<semverse>.freeze, ["~> 2.0"])
      s.add_dependency(%q<buff-ruby_engine>.freeze, ["~> 0.1"])
    end
  else
    s.add_dependency(%q<addressable>.freeze, [">= 0"])
    s.add_dependency(%q<varia_model>.freeze, ["~> 0.6"])
    s.add_dependency(%q<buff-config>.freeze, ["~> 2.0"])
    s.add_dependency(%q<buff-extensions>.freeze, ["~> 2.0"])
    s.add_dependency(%q<buff-ignore>.freeze, ["~> 1.2"])
    s.add_dependency(%q<buff-shell_out>.freeze, ["~> 1.0"])
    s.add_dependency(%q<celluloid>.freeze, ["~> 0.16.0"])
    s.add_dependency(%q<celluloid-io>.freeze, ["~> 0.16.1"])
    s.add_dependency(%q<chef-config>.freeze, [">= 12.5.0"])
    s.add_dependency(%q<erubis>.freeze, [">= 0"])
    s.add_dependency(%q<faraday>.freeze, ["~> 0.9"])
    s.add_dependency(%q<hashie>.freeze, ["< 4.0.0", ">= 2.0.2"])
    s.add_dependency(%q<httpclient>.freeze, ["~> 2.7"])
    s.add_dependency(%q<json>.freeze, [">= 1.7.7"])
    s.add_dependency(%q<mixlib-authentication>.freeze, [">= 1.3.0"])
    s.add_dependency(%q<retryable>.freeze, ["~> 2.0"])
    s.add_dependency(%q<semverse>.freeze, ["~> 2.0"])
    s.add_dependency(%q<buff-ruby_engine>.freeze, ["~> 0.1"])
  end
end
