$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "trim_spaces_for/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "trim_spaces_for"
  s.version     = TrimSpacesFor::VERSION
  s.authors     = ["Takumi Miura"]
  s.email       = ["mitaku1104@gmail.com"]
  s.homepage    = "https://github.com/mitaku/trim_spaces_for"
  s.summary     = "TrimSpacesFor gem removes leading and trailing white spaces from the AR attribute values."
  s.description = "TrimSpacesFor gem removes leading and trailing white spaces from the AR attribute values."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency 'rails', ['>= 3.1.0']

  s.add_development_dependency 'bundler', ['>= 1.0.0']
  s.add_development_dependency 'sqlite3', ['>= 0']
  s.add_development_dependency 'rspec', ['>= 0']
  s.add_development_dependency 'rspec-rails', ['>= 0']
  s.add_development_dependency 'spork', ">= 1.0.0.rc"
  s.add_development_dependency 'rb-fsevent'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'guard-spork'
  s.add_development_dependency 'growl'

end
