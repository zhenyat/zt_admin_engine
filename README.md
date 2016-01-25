# ZtAdmin

This project rocks and uses MIT-LICENSE.

## Versions:
  Ruby 2.3.0
  Rails 5.0.0.beta1

## References
[Edge Guide](http://edgeguides.rubyonrails.org/engines.html)

**ZT Admin** is an Engine to be integrated with ZT Applications.
It uses Simple Form, Bootstrap and HAML

## Development

### Step 1
Create the Engine:

```console
chruby 2.3.0
rails plugin new zt_admin --mountable
cd zt_admin
cat > .ruby-version
2.3.0
^D
```
Update file zt_admin.gemspec file

```ruby
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
```

Run command:
```console
bundle install
```

Finally initialize Git
```console
git init
git add .
git commit -m "initial commit"
git remote add origin git@github.com:zhenyat/zt_admin.git
git push -u origin master
```

