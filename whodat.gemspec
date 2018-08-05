$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "whodat/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "whodat"
  s.version     = Whodat::VERSION
  s.authors     = ["Barbara Perlik"]
  s.email       = ["barbperlik@gmail.com"]
  s.homepage    = "https://github.com/bperlik/whodat"
  s.summary     = "A simple authentication gem for Rails projects"
  s.description = "A simple authentication gem built on a Rails engine using BCrypt"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.0"
  s.add_dependency "bcrypt"
  s.add_dependency "jquery"
  s.add_dependency "jquery-rails"
  s.add_dependency "turbolinks"
  s.add_dependency "bootstrap"

  s.add_development_dependency "sqlite3"

end
