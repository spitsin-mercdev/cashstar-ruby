# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cashstar/version"

Gem::Specification.new do |s|
  s.name        = "cashstar-ruby"
  s.version     = Cashstar::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Charlie White"]
  s.email       = ["cwhite@cashstar.com"]
  s.homepage    = "http://www.cashstar.com"
  s.summary     = %q{Ruby Bindings for the CashStar API}
  s.description = %q{CashStar's API provides a simple interface for purchasing and issuing electronic gift cards from a variety of brands}
  s.rubyforge_project = "cashstar-ruby"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  #s.files = Dir['lib/**/*.rb']

  s.add_dependency 'hashie'
  s.add_dependency 'faraday', '~> 0.8'
  s.add_dependency 'faraday_middleware', '~> 0.8'
  s.add_dependency 'multi_json', '~> 1.8'
  s.add_dependency 'multi_xml', '~> 0.5.0'

  s.add_development_dependency 'rspec', '~> 2.12'
  s.add_development_dependency 'mocha', '~> 0.13'
  s.add_development_dependency 'webmock', '~> 1.9'
  s.add_development_dependency 'rake'
end
