# README

##### System requirements
    
    Ruby 2.7.1
    Rails 6.0.3

##### Database creation

configured to use postgresql
    
initialize database

    rails db:create

##### Run development mode
    
rails app 

    bundle exec rails s

webpack-dev-server for auto-reloading and faster compilation 

    ./bin/webpack-dev-server

##### Run test suite
    
set up with rspec, capybara and Selenium webdriver to run in chrome. 
Failing specs will open a new window with a screen shot
        
feature specs

    bundle exec rspec [path-to-spec.rb]

##### Deployment
    
set up for automatic deployments to Heroku from the master branch

    git push

view app at https://moody-r.herokuapp.com/

* System dependencies

* Configuration

* Database initialization

* Services (job queues, cache servers, search engines, etc.)
