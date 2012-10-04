$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cloudstrg/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cloudstrg"
  s.version     = Cloudstrg::VERSION
  s.authors     = ["Raul Roman-Lopez"]
  s.email       = ["rroman@libresoft.es"]
  s.homepage    = "http://git.libresoft.es/cloudstrg/"
  s.summary     = "Base API for cloud storage drivers"
  s.description = "Base API for cloud storage drivers."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.8"

  s.add_development_dependency "sqlite3"
end
