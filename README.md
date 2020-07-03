# README

https://moody-r.herokuapp.com/

### System requirements
    
    Ruby 2.7.1
    Rails 6.0.3

### Database creation

configured to use postgresql
    
initialize database

    rails db:create

### Run development mode
    
rails app 

    bundle exec rails s

webpack-dev-server for auto-reloading and faster compilation 

    ./bin/webpack-dev-server

### Run test suite
    
set up with rspec, capybara and Selenium webdriver to run in chrome. 
Failing specs will open a new window with a screen shot
        
feature (integration) specs & rails unit tests

    bundle exec rspec [path-to-spec.rb]
    
component tests

    yarn test

### Deployment
    
set up for automatic deployments to Heroku from the master branch

    git push
