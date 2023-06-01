#encoding: utf-8

Gem::Specification.new do |s|
  s.name          = 'discogs-collection'
  s.version       = '0.1'
  s.author        = 'John Labovitz'
  s.email         = 'johnl@johnlabovitz.com'

  s.summary       = %q{Manage Discogs collection.}
  s.description   = %q{DiscogsCollection manages a Discogs collection.}
  s.homepage      = 'http://github.com/jslabovitz/discogs-collection'
  s.license       = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_path  = 'lib'

  s.add_dependency 'discogs-wrapper', '~> 2.5'
  s.add_dependency 'http', '~> 5.1'
  s.add_dependency 'path', '~> 2.1'
  s.add_dependency 'set_params', '~> 0.2'
  s.add_dependency 'simple-group', '~> 0.2'
  s.add_dependency 'simple-printer', '~> 0.1'

  s.add_development_dependency 'bundler', '~> 2.4'
  s.add_development_dependency 'minitest', '~> 5.18'
  s.add_development_dependency 'minitest-power_assert', '~> 0.3'
  s.add_development_dependency 'rake', '~> 13.0'
end