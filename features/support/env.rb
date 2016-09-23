require 'capybara/cucumber'
require 'capybara-screenshot/cucumber'
require 'selenium-webdriver'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end






