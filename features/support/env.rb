require 'capybara/cucumber'
require 'capybara-screenshot/cucumber'
 
Capybara.default_driver = :selenium 
Capybara::Screenshot.webkit_options = { width: 1024, height: 5000 }







