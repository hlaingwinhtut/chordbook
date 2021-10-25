source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

gem 'rails'
gem 'pg'
gem 'puma'
gem 'webpacker', '>= 6.0.0.beta'
gem 'turbolinks'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'vite_rails'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console'
  gem 'listen'
  gem "webpacker-pwa", require: false
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
