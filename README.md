# ZT Admin

**ZT Admin** is an Engine to be integrated with ZT Applications.
It uses Simple Form, Bootstrap and HAML / ERB view formats

This project rocks and uses MIT-LICENSE.

## Versions:
  Ruby 2.3.0
  Rails 5.0.0.beta1.1

## References
[Edge Guide](http://edgeguides.rubyonrails.org/engines.html)
[Configuring Rails Applications](http://guides.rubyonrails.org/v3.2/configuring.html)

## Development

### Step 1: Initial
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
  s.add_dependency 'haml-rails'   # The only HAML gem required
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

### Step 2: Generic files
```console
cp $GENERIC/lib/templates lib
```

### Step 3: User

* Generate scaffold
* Replace file models.rb by generic sample
* Update migration file create_zt_admin_user.rb by generic sample
```console
bin/rails g scaffold User role:integer last_name first_name email password_digest remember_digest status:integer
# Replace / update files
cp $GENERIC/lib/models/user.rb app/models
file=`find .  -print |g user`; cat $GENERIC/db/migrate/[TS]_create_zt_admin_users.rb >$file
```
