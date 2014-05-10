require File.dirname(__FILE__) + '/lib/boot_inquirer'

source 'https://rubygems.org'

BootInquirer.each_active_app do |app|
  gemspec path: "apps/#{app.gem_name}"
end


gem 'rails', '4.1.0'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'thin'

group :development, :test do
  gem 'rspec-rails', '~> 3.0.0.beta'
end

group :production do
  gem 'rails_12factor'
  gem 'pg'
end

group :test do
  gem 'shoulda-matchers', require: false
end


# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
