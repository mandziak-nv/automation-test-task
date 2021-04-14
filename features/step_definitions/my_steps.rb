require 'selenium-webdriver'
require 'capybara/cucumber'

driver = Selenium::WebDriver.for :chrome

Given(/^I am on the page "([^"]*)"$/) do |page|
  driver.get page
end

When(/^I click on "([^"]*)"$/) do |element|
  driver.find_element(:xpath, "//a[text()='" + element + "']").click
end

Then(/^Check page headers$/) do
  expect(driver.find_elements(:xpath, "//h1").count).to be == 1
  expect(driver.find_elements(:xpath, "//h2").count).to be > 1
end

And(/^I input "([^"]*)" into Your Name field$/) do |text|
  driver.find_element(:xpath, "//input[@name='your-name']").send_keys(text)
end

And(/^I input "([^"]*)" into Your Email field$/) do |text|
  driver.find_element(:xpath, "//input[@name='your-email']").send_keys(text)
end

And(/^I input "([^"]*)" into Subject field$/) do |text|
  driver.find_element(:xpath, "//input[@name='your-subject']").send_keys(text)
end

And(/^I input "([^"]*)" into Message area$/) do |text|
  driver.find_element(:xpath, "//textarea[@name='your-message']").send_keys(text)
end

And(/^I close page$/) do
  sleep 1
  driver.close
end