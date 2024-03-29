source 'https://rubygems.org'

ruby '2.3.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
# Use PostgreSQL as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby
# Use devise for user authentication
gem 'devise'
# Use carrierwave for file uploads
gem 'carrierwave', '~> 1.0'
# Use minimagick for image processing
gem 'mini_magick'
# Use ActiveModel::Serializers for model JSON serialization
gem 'active_model_serializers'
# Use React.js for building view components
gem 'react-rails'
# Use js-routes for exposing named route helpers to JS
gem 'js-routes'
# Use ActiveAdmin for the admin dashboard
gem 'activeadmin'
# Use cancancan for authorization
gem 'cancancan'

# Use Slim for view templating
gem 'slim-rails'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use SimpleForm for easier form building
gem 'simple_form'
# Use bootstrap for building a pretty front-end
gem 'bootstrap'
# Use font-awesome for icons glyphs
gem 'font-awesome-rails'
# Rails assets gems are sourced from bower packages
source 'https://rails-assets.org' do
  # Tether provides tooltip support to bootstrap
  gem 'rails-assets-tether', '>= 1.1.0'
end

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  # Use RSpec to write and run BDD tests
  gem 'rspec-rails'
  # Use RSpec controller testing extensions to assert view logic
  gem 'rails-controller-testing'
  # Timecop allows us to travel through time in our tests
  gem 'timecop'
  # Faker generates random data for our factories
  gem 'faker'
  # FactoryGirl provides easy factory creation and use
  gem 'factory_girl_rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Guard runs our tests automatically
  gem 'guard'
  # Guard plugin for RSpec
  gem 'guard-rspec'
  # Guard plugin to reload browser
  gem 'guard-livereload', '~> 2.5', require: false
  # Injects livereload.js
  gem 'rack-livereload'
  # Better Errors gives us more options when debugging errors
  gem 'better_errors'
  # More features for better_errors
  gem 'binding_of_caller'
end

group :test do
  # Shoulda::Matchers gives us readable matchers for our unit tests
  gem 'shoulda-matchers'
  # DatabaseCleaner cleans up persisted test data between test runs
  gem 'database_cleaner'
  # Fuubar formats our RSpec test runs into a progress bar
  gem 'fuubar'
  # WebMock stubs HTTP requests in our tests
  gem 'webmock'
  # SitePrism provides easy page model creation and use
  gem 'site_prism'
  # Turnip allows us to run Cucumber tests on top of RSpec
  gem 'turnip'
  # Capybara is an acceptance test framework that simulates user interaction
  gem 'capybara'
  # Capybara::Screenshot gives us screenshots on test failures
  gem 'capybara-screenshot'
  # Selenium::WebDriver allows us to use Selenium/WebDriver in ruby
  gem 'selenium-webdriver'
  # Poltergeist is a PhantomJS driver for Capybara
  gem 'poltergeist'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
