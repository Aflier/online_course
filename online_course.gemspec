$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "online_course/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "online_course"
  s.version     = OnlineCourse::VERSION
  s.authors     = ["Simon Kiteley"]
  s.email       = ["simon@aflier.com"]
  s.homepage    = "http://www.aflier.com"
  s.summary     = "OnlineCourse."
  s.description = "Description of OnlineCourse."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"
  s.add_dependency 'bootstrap', '~> 4.0.0.beta3'
  s.add_dependency 'simple_form'
  s.add_dependency 'summernote-rails'
end
