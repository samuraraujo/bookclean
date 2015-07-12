# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bookclean/version'

Gem::Specification.new do |spec|
  spec.name          = "bookclean"
  spec.version       = Bookclean::VERSION
  spec.authors       = ["Samur Araujo"]
  spec.email         = ["samuraraujo@gmail.com"]
  spec.summary       = %q{Clean book metadata.}
  spec.description   = %q{A library with several functions to clean book metadata in portugues.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_runtime_dependency 'lisbn'
  spec.add_runtime_dependency 'library_stdnums'
  spec.add_runtime_dependency "unicode_utils"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency  "minitest"  
  
end
