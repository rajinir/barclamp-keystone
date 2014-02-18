# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "fauxhai"
  s.version = "2.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Seth Vargo"]
  s.date = "2013-12-12"
  s.description = "Easily mock out ohai data"
  s.email = ["sethvargo@gmail.com"]
  s.executables = ["fauxhai"]
  s.files = ["bin/fauxhai"]
  s.homepage = "https://github.com/customink/fauxhai"
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9")
  s.rubygems_version = "1.8.11"
  s.summary = "Fauxhai provides an easy way to mock out your ohai data for testing with chefspec!"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<net-ssh>, [">= 0"])
      s.add_runtime_dependency(%q<ohai>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<net-ssh>, [">= 0"])
      s.add_dependency(%q<ohai>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<net-ssh>, [">= 0"])
    s.add_dependency(%q<ohai>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
