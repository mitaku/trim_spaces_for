$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "trim_spaces_for/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "trim_spaces_for"
  s.version     = TrimSpacesFor::VERSION
  s.authors     = ["TakumiMIURA"]
  s.email       = ["mitaku1104@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TrimSpacesFor is trimming white space module."
  s.description = ""

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 3.2.1"

  s.add_development_dependency "sqlite3"
end
