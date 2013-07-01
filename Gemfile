source 'http://rubygems.org'

gem 'rails', '~> 3.2.1'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
end

group :production do
  gem 'pg'
end

gem 'magic_encoding'
gem 'thin'
gem 'haml'
gem 'geokit'
gem 'gmaps4rails'
gem 'twilio-ruby'
gem 'dynamic_form'
gem 'ruby-gmail'
gem 'foreman'
gem 'daemons'
gem 'mms2r'
gem 'mime'
gem 'rmagick'
gem 'bcrypt-ruby'
gem 'paperclip', :git => 'git://github.com/thoughtbot/paperclip'
gem 'therubyracer' # this is required for the coffeescript compiler to work on linux
gem 'simple_enum'
gem 'awesome_nested_set'
gem 'uuid'
gem 'whenever', :require => false
gem 'eventmachine', '~> 1.0.0.beta.4.1'
gem 'nexmo'
gem 'cancan'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "~> 3.2.3"
  gem 'bootstrap-sass', '~> 2.0.3'
  gem 'coffee-rails', "~> 3.2.1"
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'aws-sdk'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  gem 'cucumber-rails'
end

group :test, :development do
  gem 'cucumber-rails-training-wheels' # some pre-fabbed step definitions  
  gem 'database_cleaner' # to clear Cucumber's test database between runs
  gem 'capybara'         # lets Cucumber pretend to be a web browser
  gem 'launchy'          # a useful debugging aid for user stories
end
