# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "strainer"
  s.version = "3.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Seth Vargo"]
  s.date = "2013-08-19"
  s.description = "Run isolated cookbook tests against your chef repository with Strainer."
  s.email = ["sethvargo@gmail.com"]
  s.executables = ["strain", "strainer"]
  s.files = ["bin/strain", "bin/strainer"]
  s.homepage = "https://github.com/customink/strainer"
  s.licenses = ["Apache 2.0"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.11"
  s.summary = "Strainer allows you to run cookbook tests in an isolated environment while still keeping a single Gemfile and repository for all your cookbooks."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<berkshelf>, ["~> 2.0"])
      s.add_runtime_dependency(%q<buff-platform>, ["~> 0.1"])
      s.add_development_dependency(%q<redcarpet>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<berkshelf>, ["~> 2.0"])
      s.add_dependency(%q<buff-platform>, ["~> 0.1"])
      s.add_dependency(%q<redcarpet>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<berkshelf>, ["~> 2.0"])
    s.add_dependency(%q<buff-platform>, ["~> 0.1"])
    s.add_dependency(%q<redcarpet>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
