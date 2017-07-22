# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
rake db:create

* Database initialization
rake db:migrate

* Run application
rails s

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

# ImageUploader
To use paperclip you have to install ImageMagick and if you run the application in development you should follow the instructions here: https://github.com/thoughtbot/paperclip
In config/environments/development.rb change 
Paperclip.options[:command_path] = "/usr/bin/"
to your path
