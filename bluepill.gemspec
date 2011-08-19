# -*- encoding: utf-8 -*-

$LOAD_PATH.push File.expand_path("../lib", __FILE__)

require "bluepill/version"

Gem::Specification.new do |s|
  s.name        = "ryansch-bluepill"
  s.version     = Bluepill::VERSION.dup
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Arya Asemanfar", "Gary Tsang", "Rohith Ravi", "Ryan Schlesinger"]
  s.email       = ["ryan@instanceinc.com"]
  s.homepage    = "http://github.com/ryansch/bluepill"
  s.summary     = %q{A process monitor written in Ruby with stability and minimalism in mind.}
  s.description = %q{Bluepill keeps your daemons up while taking up as little resources as possible. After all you probably want the resources of your server to be used by whatever daemons you are running rather than the thing that's supposed to make sure they are brought back up, should they die or misbehave.}

  s.add_dependency 'daemons', '~> 1.1.0'
  s.add_dependency 'state_machine', '~> 0.9.4'
  s.add_dependency 'activesupport', '>= 3.0.0'
  s.add_dependency 'i18n', '>= 0.5.0'

  s.add_development_dependency 'bundler', '>= 1.0.10'

  s.files            = `git ls-files`.split("\n")
  s.test_files       = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables      = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths    = ["lib"]
  s.extra_rdoc_files = ["LICENSE", "README.md"]
end
