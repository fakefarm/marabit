$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "marketing/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "marketing"
  s.version     = Marketing::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Marketing."
  s.description = "TODO: Description of Marketing."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.1.0"

  s.add_development_dependency "sqlite3"
end
