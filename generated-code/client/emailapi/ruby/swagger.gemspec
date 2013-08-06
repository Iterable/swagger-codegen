# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "swagger/version"

Gem::Specification.new do |s|
  s.name        = "iterable_swagger"
  s.version     = Swagger::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Zeke Sikelianos", "Tony Tam"]
  s.email       = ["zeke@wordnik.com", "tony@wordnik.com"]
  s.homepage    = "http://developer.wordnik.com"
  s.summary     = %q{A ruby wrapper for the swagger APIs}
  s.description = %q{This gem maps to a swagger API}

  s.rubyforge_project = "swagger"

  s.add_dependency 'typhoeus', '>=0.2.1'
  s.add_dependency 'addressable', '>=2.2.4'
  s.add_dependency 'json', '>=1.4.6'

  s.files         = `find *`.split("\n").uniq.sort.select{|f| !f.empty? }
  s.test_files    = []
  s.executables   = []
  s.require_paths = ["lib"]
end
