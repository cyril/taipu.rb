Gem::Specification.new do |spec|
  spec.name          = 'taipu'
  spec.version       = File.read('VERSION.semver').chomp
  spec.authors       = ['Cyril Wack']
  spec.email         = ['contact@cyril.email']

  spec.summary       = 'Collections of types.'
  spec.description   = 'Collections of types for Ruby.'
  spec.homepage      = 'https://github.com/cyril/taipu.rb'
  spec.license       = 'MIT'

  spec.files         =
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^test/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'matchi',                 '~> 1.0.1'

  spec.add_development_dependency 'bundler',    '~> 1.11.2'
  spec.add_development_dependency 'rake',       '~> 10.5.0'
  spec.add_development_dependency 'yard',       '~> 0.8.7.6'
  spec.add_development_dependency 'simplecov',  '~> 0.11.1'
  spec.add_development_dependency 'rubocop',    '~> 0.36.0'
  spec.add_development_dependency 'spectus',    '~> 3.0.5'
end
