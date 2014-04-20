# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mdb/version'

Gem::Specification.new do |spec|
  spec.name          = "mdb"
  spec.version       = MDB::VERSION
  spec.authors       = ["Hunter Barrington"]
  spec.email         = ["hunter@ftwdev.com"]
  spec.description   = %q{Library to load Microsoft Access Databases}
  spec.summary       = %q{FFI to access mdb-tools}
  spec.homepage      = ""
  spec.license       = ""

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "nice-ffi"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec", "~> 2.6"
  #spec.add_development_dependency "turn"
end
