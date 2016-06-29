source 'https://www.rubygems.org'

gem 'sinatra'
gem 'tilt', '~> 1.4.1'
gem 'tilt-jbuilder', require: 'sinatra/jbuilder'

gem 'jbuilder', '2.0.6'
gem 'endpoint_base', github: 'flowlink/endpoint_base'

gem 'netsuite', github: 'NetSweet/netsuite', branch: 'master'
gem 'honeybadger'
gem 'airbrake'

group :development do
  gem 'rake'
  gem 'pry'
  gem 'shotgun'
end

group :test do
  gem 'vcr'
  gem 'rspec', '~> 2.14'
  gem 'rack-test'
  gem 'webmock'
end

group :test, :development do
  gem 'pry-byebug'
end

group :production do
  gem 'foreman'
  gem 'unicorn'
end
