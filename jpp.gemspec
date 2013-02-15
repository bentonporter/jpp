require File.expand_path("../lib/jpp/version", __FILE__)

Gem::Specification.new do |s|
  s.name          = 'jpp'
  s.version       = Jpp::VERSION
  s.date          = Date.today.to_s
  s.summary       = 'Command-line JSON pretty-printer'
  s.description   = 'A command-line JSON pretty-printer using the json gem'
  s.homepage      = 'https://github.com/bentonporter/jpp'
  s.authors       = ['Ben Porter']
  s.email         = 'benton.porter@gmail.com'
  s.require_paths = ['ext', 'lib']
  s.executables   = 'jpp'
  s.files         = Dir['Rakefile', '{bin,ext,lib,test}/**/*', 'README*', 'LICENSE*']
  
  s.add_dependency 'json'
  s.add_development_dependency 'rake'
end
