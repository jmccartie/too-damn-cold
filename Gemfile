ruby '2.7.2'
source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1.4'
# Use Puma as the app server
gem 'puma', '~> 3.12.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
gem 'httparty'
gem 'geocoder'
gem "bugsnag"
gem 'redis'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
gem 'slim-rails'
gem 'bootstrap-sass'

group :development, :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'dotenv-rails'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'listen'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
