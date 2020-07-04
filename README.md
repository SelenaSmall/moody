# README

https://moody-r.herokuapp.com/ 

[![Moody](https://circleci.com/gh/SelenaSmall/moody.svg?style=shield)](https://app.circleci.com/pipelines/github/SelenaSmall/moody)

## Development

two options are available

**1. Use make tasks to development quick and easy.**

see available commands

    make

ensure you have tmux, asdf and project dependencies installed

    make install_tools

start a tmux session with everything you need for development

    make tmux_start

**2. The old fashioned way.**

ensure you have the correct dependencies installed

    Ruby 2.7.1
    Rails 6.0.3
    Bundler 2.1.4
    nodejs 10.16.0
    postgres 9.5.15

initialize database

    rails db:create && db:migrate
    
run rails app 

    bundle exec rails s

run webpack-dev-server for auto-reloading and faster compilation 

    ./bin/webpack-dev-server

## Testing
    
set up with rspec, capybara and Selenium webdriver to run in chrome. 
Failing specs will open a new window with a screen shot
        
feature (integration) specs & rails unit tests

    bundle exec rspec [path-to-spec.rb]
    
component tests

    yarn test

## Deployment
    
set up for automatic deployments to Heroku via CircleCI pipeline from the master branch

    git push
