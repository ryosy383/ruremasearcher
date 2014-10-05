# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruremasearcher/version'

Gem::Specification.new do |spec|
  spec.name          = "ruremasearcher"
  spec.version       = Ruremasearcher::VERSION
  spec.authors       = ["ryosy383"]
  spec.email         = ["mosso.ryosy383@gmail.com"]
  spec.summary       = %q{Search for in the Rurima-Search the method of Ruby.}
  spec.description   = %q{Search in http://rurema.clear-code.com/}
  spec.homepage      = "https://github.com/ryosy383/ruremasearcher"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
