$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "zt_admin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "zt_admin"
  s.version     = ZtAdmin::VERSION
  s.authors     = ["Zhenya Telyukov"]
  s.email       = ["telyukov@gmail.com"]
  s.homepage    = "https://github.com/zhenyat/zt_admin"
  s.summary     = "Admin Engine for ZT Applications"
  s.description = "Admin Engine for ZT Applications"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency 'acts_as_list'
# s.add_dependency 'acts-as-taggable-on'
  s.add_dependency 'bcrypt'
  s.add_dependency 'bootstrap-sass'
  s.add_dependency 'bootstrap-will_paginate'
  s.add_dependency 'carrierwave'
  s.add_dependency 'ckeditor'
  s.add_dependency 'coffee-rails'
  s.add_dependency 'enum_help'
  s.add_dependency 'haml-rails'
  s.add_dependency 'jbuilder'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'mini_magick'
  s.add_dependency 'mysql2'
  s.add_dependency 'pg'
  s.add_dependency 'pundit'
  s.add_dependency "rails", ">= 5.0.0.beta1", "< 5.1"
  s.add_dependency 'sass-rails'
  s.add_dependency "simple_form"
  s.add_dependency 'will_paginate'

  s.add_development_dependency "byebug"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "web-console"
end
