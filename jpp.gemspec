Gem::Specification.new do |s|
  s.name          = 'jpp'
  s.version       = '1.1.0'
  s.date          = '2013-02-08'
  s.summary       = 'Command-line JSON pretty-printer'
  s.description   = 'A command-line JSON pretty-printer using the json gem'
  s.homepage      = 'https://github.com/bentonporter/jpp'
  s.authors       = ['Ben Porter']
  s.email         = 'benton.porter@gmail.com'
  s.files         = ['bin/jpp', 'ext/hash.rb', 'lib/jpp.rb', 'LICENSE.md', 'README.md']
  s.require_paths = ['ext', 'lib']
  s.executables   = 'jpp'
  s.add_dependency 'json'
end