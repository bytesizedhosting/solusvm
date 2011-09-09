# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "solusvm/version"

Gem::Specification.new do |s|
  s.name    = %q{solusvm}
  s.version = Solusvm::VERSION

  s.authors     = ["Justin Mazzi"]
  s.email       = ["jmazzi@gmail.com"]
  s.homepage    = "http://www.site5.com"
  s.summary     = "Wrapper for the SolusVM Admin::API"
  s.description = "Solusvm allows for easy interaction with the SolusVM Admin::API."

  s.rubyforge_project = "solusvm"
  s.files             = `git ls-files`.split("\n")
  s.test_files        = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables       = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths     = ["lib"]

  s.add_runtime_dependency 'xml-simple'
  s.add_runtime_dependency 'jruby-openssl' if RUBY_PLATFORM == 'java'

  s.add_development_dependency 'redgreen'
  s.add_development_dependency 'fakeweb'
  s.add_development_dependency 'turn'
  s.add_development_dependency 'rake', '~> 0.8.7'
end
