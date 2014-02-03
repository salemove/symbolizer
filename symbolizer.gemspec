# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'symbolizer/version'

Gem::Specification.new do |spec|
  spec.name          = 'symbolizer'
  spec.version       = Symbolizer::VERSION
  spec.authors       = ['Indrek Juhkam', 'Urmas Talimaa']
  spec.email         = ['indrek@salemove.com', 'urmas@salemove.com']
  spec.description   = %q{Ruby hash symbolizer}
  spec.summary       = %q{Because activesupport is too big}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
