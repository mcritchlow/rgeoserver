require File.join(File.dirname(__FILE__), 'lib/rgeoserver/version')
Gem::Specification.new do |s|
  s.name = 'rgeoserver'
  s.version = RGeoServer::VERSION
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 1.9.3'
  s.authors = ['Renzo Sanchez-Silva', 'Bess Sadler', 'Darren Hardy']
  s.email = ['drh@stanford.edu']
  s.summary = 'GeoServer REST API Ruby library'
  s.description = 'GeoServer REST API Ruby library'
  s.homepage = 'http://github.com/sul-dlss/rgeoserver'
  s.has_rdoc = true
  s.licenses = ['ALv2', 'Stanford University Libraries']

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {examples,spec}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'activemodel', '~> 3.2'
  s.add_dependency 'activesupport', '~> 3.2'
  s.add_dependency 'confstruct', '~> 0.2'
  s.add_dependency 'nokogiri', '~> 1.6'
  s.add_dependency 'rest-client', '~> 1.6'
  s.add_dependency 'rgeo', '~> 0.3.20'
  s.add_dependency 'rgeo-shapefile', '~> 0.2'
  s.add_dependency 'rubyzip', '~> 0.9'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'equivalent-xml'
  s.add_development_dependency 'jettywrapper'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'version_bumper'
  s.add_development_dependency 'yard'
end
