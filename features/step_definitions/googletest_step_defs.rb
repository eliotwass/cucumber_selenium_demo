Given(/^I am on the Google homepage$/) do
  visit 'http://www.google.com'
end

Given (/^I wait for (6+) seconds?$/) do |n|
  sleep(n.to_i)
end

Then(/^I will search for "([^"]*)"$/) do |searchText|
  fill_in 'lst-ib', with: searchText
end

Given (/^I wait for (10+) seconds?$/) do |n|
  sleep(n.to_i)
end

Then(/^I should see "([^"]*)"$/) do |expectedText|
  page.has_content?(expectedText)
end

Given (/^I wait for (5+) seconds?$/) do |n|
  sleep(n.to_i)
end

Then(/^I will click the about SPR link$/) do
  click_link('About SPR')
end

Then(/^SPR about page will display$/) do
  page.has_title?('About SPR Technology Consultants')
end

And(/^contact information will appear at the bottom$/) do
  page.has_content?('233 South Wacker Drive')
  page.execute_script 'window.scrollBy(0,10000)'
end

Then(/^I will take a screenshot$/) do 
sleep(5.to_i)
Capybara.save_path = "/home/eliot/cucumber_selenium_demo/screenshots"
screenshot_and_open_image
end

