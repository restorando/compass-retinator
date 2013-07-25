# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'compass-retinator/version'

Gem::Specification.new do |spec|
  spec.name          = "compass-retinator
  spec.version       = CompassRetinator::VERSION
  spec.authors       = ["Restorando"]
  spec.email         = ["dev@restorando.com"]
  spec.description   = %q{Easily create sprites that support retina}
  spec.summary       = %q{Compass plugin to create sprite for retina devices}
  spec.homepage      = "https://github.com/restorando/compass-retinator"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "compass", "~> 0.12.0"
end
