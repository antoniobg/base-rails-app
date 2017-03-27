source "https://rubygems.org"
ruby "2.4.1"
gem "rails", "~> 5.0.1"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Database
gem "pg"

# Server
gem "puma", "~> 3.0"

# Assets
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "jquery-rails"
gem "turbolinks", "~> 5"

# Users & Authentication
gem "devise"
gem "omniauth"
gem "omniauth-facebook"
gem "omniauth-twitter"
gem 'omniauth-google-oauth2'
gem 'omniauth-github'

# API
gem "jbuilder", "~> 2.5"

group :development, :test do
  gem "pry"
  gem "pry-byebug"
  gem "dotenv-rails"
end

group :development do
  gem "letter_opener"
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.0.5"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end
