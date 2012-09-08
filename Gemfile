source 'http://rubygems.org'

gem 'rails', '3.2.8'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'twitter-bootstrap-rails', :group => :assets

gem 'devise'
gem 'simple_form'
gem 'cancan'
gem 'rolify'

group :production do
  
  gem 'pg'
  
end

gem 'brazilian-rails' # gerando o erro abaixo:
#/Users/danielcardoso/.rvm/gems/ruby-1.9.3-p125/gems/bundler-1.1.5/lib/bundler/runtime.rb:68:in `block (2 levels) in require': iconv w
#ill be deprecated in the future, use String#encode instead. 

gem 'carrierwave'
gem 'rmagick'

group :development do
  gem 'sqlite3'  
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
