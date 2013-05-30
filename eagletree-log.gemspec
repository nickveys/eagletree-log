# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eagletree/log/version'

Gem::Specification.new do |spec|
  spec.name          = "eagletree-log"
  spec.version       = EagleTree::Log::VERSION
  spec.authors       = ["Nick Veys"]
  spec.email         = ["nick@codelever.com"]
  spec.description   = %q{Read and interpret Eagle Tree FDR log files.}
  spec.summary       = %q{Eagle Tree FDR log file reader}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'ci_reporter', '= 1.8.4'
  spec.add_development_dependency 'rake', '~> 0.8'
  spec.add_development_dependency 'rspec', '~> 2.12'
end
