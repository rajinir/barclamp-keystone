# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "chef-zero"
  s.version = "1.7.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["John Keiser"]
  s.date = "2013-11-19"
  s.description = "Self-contained, easy-setup, fast-start in-memory Chef server for testing and solo setup purposes"
  s.email = "jkeiser@opscode.com"
  s.executables = ["chef-zero"]
  s.files = ["bin/chef-zero"]
  s.homepage = "http://www.opscode.com"
  s.licenses = ["Apache 2.0"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.11"
  s.summary = "Self-contained, easy-setup, fast-start in-memory Chef server for testing and solo setup purposes"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mixlib-log>, ["~> 1.3"])
      s.add_runtime_dependency(%q<hashie>, ["~> 2.0"])
      s.add_runtime_dependency(%q<moneta>, ["< 0.7.0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<rack>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<mixlib-log>, ["~> 1.3"])
      s.add_dependency(%q<hashie>, ["~> 2.0"])
      s.add_dependency(%q<moneta>, ["< 0.7.0"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<rack>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<mixlib-log>, ["~> 1.3"])
    s.add_dependency(%q<hashie>, ["~> 2.0"])
    s.add_dependency(%q<moneta>, ["< 0.7.0"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<rack>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
