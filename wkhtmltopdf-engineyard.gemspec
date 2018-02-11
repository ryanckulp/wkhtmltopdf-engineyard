# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "wkhtmltopdf-engineyard"
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brad Phelan", "Sebastian Maier"]
  s.date = "2013-01-01"
  s.description = "wkhtmltopdf binaries engine yard"
  s.email = "aprice@bettertheworld.com"
  s.executables = ["wkhtmltopdf-i386"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.mdown"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.mdown",
    "Rakefile",
    "VERSION",
    "bin/wkhtmltopdf-i386",
    "lib/wkhtmltopdf-engineyard.rb",
    "test/helper.rb",
    "test/test_wkhtmltopdf_engineyard_and_osx_binaries.rb",
    "wkhtmltopdf-engineyard.gemspec"
  ]
  s.homepage = "http://github.com/BetterTheWorld/wkhtmltopdf-engineyard"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.15"
  s.summary = "wkhtmltopdf binaries for engine yard"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
  end
end
