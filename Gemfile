source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.0'

gem 'puma',                               '~> 3.11'
gem 'rails',                              '5.2.0'
gem 'pg',                                 '0.21'
gem 'sass-rails',                         '~> 5.0'
gem 'coffee-rails',                       '~> 4.2'
gem 'uglifier',                           '>= 1.3.0'
gem 'bootstrap-sass',                     '3.4'
gem 'jquery-rails',                       '~> 4.3', '>= 4.3.3'
gem 'font-awesome-sass',                  '4.7'
gem 'haml-rails',                         '~> 1.0'
gem 'bootsnap',                           '>= 1.1.0', require: false
gem 'jquery-ui-rails',                    '5.0.5'
gem 'activestorage',                      '5.2.0'
gem 'nokogiri',                           '~> 1.12', '>= 1.12.4'
gem 'httparty',                           '~> 0.19.0'
gem 'watir',                              '~> 6.19', '>= 6.19.1'
gem 'webdrivers',                         '~> 4.6', '>= 4.6.1'
gem 'whenever',                           '~> 1.0'
gem 'turbolinks',                         '~> 5.2', '>= 5.2.1'
gem 'rest-client',                        '~> 2.1'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 3.19', '>= 3.19.1'
  gem 'pry-rails', '~> 0.3.9'
end

group :development do
  gem 'web-console',            '>= 3.3.0'
  gem 'listen',                 '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen',  '~> 2.0.0'
  gem 'capistrano',         require: false
  gem 'capistrano-rvm',     require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma',   require: false
end

group :test do
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'dotenv-rails', '~> 2.7', '>= 2.7.2'

gem 'rails_12factor', group: :production
