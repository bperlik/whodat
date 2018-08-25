$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "whodat/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "whodat"
  s.version     = "1.0.0"
  s.authors     = ["Barbara Perlik"]
  s.email       = ["barbperlik@gmail.com"]
  s.homepage    = "https://github.com/bperlik/whodat"
  s.summary     = "A simple authentication solution for Rails using BCrypt"
  s.description = "A simple authentication solution for development in Rails using BCrypt"
  s.license     = "MIT"

  # s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.require_paths = ["lib"]
 
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 5.2.0"
  s.add_dependency "bcrypt"
  s.add_dependency "jquery"
  s.add_dependency "jquery-rails"
  s.add_dependency "turbolinks"
  s.add_dependency "bootstrap"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_bot_rails"
  s.add_development_dependency "faker"
end

