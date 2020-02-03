# README

# Basic-Blog
This tool is blog app. 

# Description
This app has 4 basic functions.
The first is the login function.If you do not sign up, other functions will not be available.
The second is the article posting function.
The third is a comment function for articles.
The fourth is a nice feature for articles.
Articles with many likes are displayed on the top page.

# Usage
Please register as a member on the top page. Next go to My Page and post an article. When you have finished posting an article, you can check it on My Page.
Next, you can see the details of the article by clicking the article on the top page.
On the detail page, you can send a like by pressing the like button. And there is a comment column below the article so you can comment.

# Requirements
  ruby '2.5.1'
### Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
  gem 'rails', '~> 5.2.4', '>= 5.2.4.1'
### Use mysql as the database for Active Record
  gem 'mysql2', '0.5.2'
### Use Puma as the app server
gem 'puma', '~> 3.11'
### Use SCSS for stylesheets
gem 'sass-rails', '5.0.7'
### Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
### See https://github.com/rails/execjs#readme for more supported runtimes
### Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
### Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
### Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'pry-rails'
gem 'compass-rails', '3.1.0'
gem 'sprockets', '3.7.2'
gem 'devise'
