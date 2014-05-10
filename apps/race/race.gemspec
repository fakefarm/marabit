$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "race/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "race"
  s.version     = Race::VERSION
  s.authors     = ["Dave Woodall"]
  s.email       = ["dave@marabit.com"]
  s.homepage    = "http://www.marabit.com"
  s.summary     = "An engine to house all race related activities."
  s.description = "Part of the larger, Marabit universe."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.0"
  s.add_dependency "slim"
  s.add_dependency "bourbon"
  s.add_dependency "neat"
  s.add_dependency "simple_form"
  s.add_development_dependency "sqlite3"
end
