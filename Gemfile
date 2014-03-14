source 'https://rubygems.org'

ruby "1.9.3"

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
# gem 'nokogiri'
gem 'pg'
gem 'thin'

gem 'rest-client'
gem "friendly_id", "~> 4.0.0.beta8"

# Authentication, API and Oauth
gem 'devise'
gem 'oauth'
# gem 'omniauth-twitter'
# gem 'omniauth-facebook'
gem 'omniauth-google-oauth2'
gem 'cancan'

# For printing
gem 'awesome_print'

# HAML support
gem 'haml-rails'

# Carrierwave for image uploads
gem 'carrierwave'
gem 'rmagick', '2.13.2'
gem 'fog', '~> 1.3.1'

# Gravatar for user avatars
gem 'gravtastic'

# Cancan for authorization
gem 'cancan'

# New Relic for measurement
gem 'newrelic_rpm'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'bourbon'
  gem 'font-awesome-sass'
  gem 'bootstrap-sass', '~> 3.1.1.0', :path => "vendor/bootstrap-sass"
  
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'annotate' # Type "annotate" into console to annotate models, tests, fixtures and factories
  gem 'rspec'
  gem 'rspec-rails'
  gem 'nifty-generators' # Ryan Bates generators
  # gem 'factory_girl_rails'
  gem 'faker'
  # gem 'shoulda-matchers'
  # gem 'database_cleaner'
  # gem 'simplecov', require: false
  gem 'dotenv-rails' # Dot env, saves keys in the environment
end

gem 'jquery-rails'
gem 'jquery-ui-rails'
# gem 'underscore-rails'

gem "mocha", :group => :test
