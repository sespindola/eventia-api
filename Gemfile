source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.2'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'oj'
gem 'oj_mimic_json'
gem 'active_model_serializers'
gem 'redis', '~> 3.0'
gem 'bcrypt', '~> 3.1.7'
gem 'knock'
gem 'rack-cors'
gem 'pundit'
gem 'money-rails', '~>1'
gem 'eu_central_bank'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'ffaker'
  gem 'shoulda-matchers'
  gem 'rb-readline'
  gem 'pry-rails'
end

