# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "trombone/version"

Gem::Specification.new do |spec|
  spec.name          = "trombone"
  spec.version       = Trombone::VERSION
  spec.authors       = ["Mathieu Allaire"]
  spec.email         = ["mathieu@lodgem.com"]
  spec.summary       = %q{Campfire sounds, right in your terminal.}
  spec.description   = %q{Campfire sounds, right in your terminal.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "thor", "~> 0.19"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
