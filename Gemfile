source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.3"

# Logger gem のバージョンを固定して Rails のエラーを回避
gem "logger", "~> 1.5", require: false

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.8", ">= 7.0.8.7"

# The original asset pipeline for Rails
gem "sprockets-rails"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server
gem "puma", "~> 5.0"

# Bundle and transpile JavaScript
gem "jsbundling-rails"

# Hotwire's SPA-like page accelerator
gem "turbo-rails"

# Hotwire's modest JavaScript framework
gem "stimulus-rails"

# Build JSON APIs with ease
gem "jbuilder"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
