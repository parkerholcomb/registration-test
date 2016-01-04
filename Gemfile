source 'https://rubygems.org'

ruby '2.1.7'

gem 'rails', '4.2.4'
gem 'pg'
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'haml'
gem 'devise'
gem 'acts_as_commentable'
gem 'paperclip'
gem 'aws-sdk', '< 2.0'
gem 'simple_form'
gem 'stripe'
gem 'workflow'
gem 'puma'
gem 'sidekiq'
gem 'sinatra', require: false
gem 'slim'
gem 'compass-rails', '~> 2.0.5'
gem 'chosen-rails'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :production, :staging do
  gem 'newrelic_rpm'
  gem 'rails_12factor'
end

group :development, :test do
  gem 'byebug' # Call 'byebug' anywhere in the code to stop execution and get a debugger console
end

group :development do
  gem 'hirb'
  gem 'awesome_print' #, :require => 'ap'
  gem 'pry-rails'
  gem 'web-console', '~> 2.0'
  gem 'better_errors'
  gem 'xray-rails'
  # gem 'rack-mini-profiler'
  gem 'spring' # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'guard-rspec', require: false
  gem "rack-livereload"
  gem 'guard-livereload'
  gem 'quiet_assets'
  gem 'dotenv-rails'
end
