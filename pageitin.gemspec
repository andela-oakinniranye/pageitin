# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pageitin/version'

Gem::Specification.new do |spec|
  spec.name          = "pageitin"
  spec.version       = Pageitin::VERSION
  spec.authors       = ["Oreoluwa Akinniranye"]
  spec.email         = ["oreoluwa.akinniranye@andela.com"]

  spec.summary       = %q{This is just a little side project for my application, which adds pagination support.}
  spec.description   = %q{A lot of times, I get to this point where my db records are so large; using the will_paginate gem will add some extra baggage to my application. I decided to use my little knowledge of Mathematics and SQL to write a small library that does exactly what I need in my rails application }
  spec.homepage      = "https://github.com/andela-oakinniranye/pageination"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'activerecord', '~> 4.2'
  spec.add_development_dependency "pry"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
