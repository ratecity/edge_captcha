$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "edge_captcha/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "edge_captcha"
  s.version     = EdgeCaptcha::VERSION
  s.authors     = ["RateCity","Matenia Rossides"]
  s.email       = ["matenia@gmail.com"]
  s.homepage    = "http://github.com/matenia/edge_captcha"
  s.summary     = "Port of zendesk/captcha to rails 3.2."
  s.description = "engine-ified captcha for rails 3.2"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.12"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "guard-rspec"
end
