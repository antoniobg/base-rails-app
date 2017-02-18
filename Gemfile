source 'https://rubygems.org'
ruby '2.4.0'
gem 'rails', '~> 5.0.1'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Database
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
# Use sqlite3 as the database for Active Record
gem 'pg'

# Server
gem 'puma', '~> 3.0'

# Assets
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'

# Users & Authentication
gem "devise"
gem "omniauth"

# API
gem 'jbuilder', '~> 2.5'

group :development, :test do
  gem 'pry', platform: :mri
  gem 'pry-byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
