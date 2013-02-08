Gem::Specification.new do |s|
  s.name          = 'jpp'
  s.version       = '0.1'
  s.date          = '2013-02-08'
  s.summary       = 'Command-line JSON pretty-printer'
  s.description   = 'A command-line JSON pretty-printer that uses the json gem'
  s.homepage      = 'http://github.com'
  s.authors       = ['Ben Porter']
  s.email         = 'benton.porter@gmail.com'
  s.files         = ['bin/jpp', 'ext/hash.rb', 'lib/jpp.rb', 'README.md']
  s.require_paths = ['lib']
  s.executables   = 'jpp'
  s.add_dependency 'json'
end