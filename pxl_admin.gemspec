$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "pxl_admin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "pxl_admin"
  s.version     = PxlAdmin::VERSION
  s.authors     = ["Joe Swann"]
  s.email       = ["joe@pixelbash.co.nz"]
  s.homepage    = "pixelbash.co.nz"
  s.summary     = "Yet Another Rails Admin"
  s.description = "Goal: Take all my favourite tools and use them to build an admin gem I actually enjoy using"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5.1"
  s.add_dependency "devise"
  #s.add_dependency "slim"
  #s.add_dependency "pundit"
  s.add_dependency "friendly_id"
  s.add_dependency "simple_form"
  s.add_dependency "country_select"
  s.add_dependency "paperclip"
  s.add_dependency "kaminari"

  s.add_development_dependency "sqlite3"
end
