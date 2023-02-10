require 'selenium-webdriver'
require 'capybara/cucumber'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new app, browser: :chrome, options: Selenium::WebDriver::Chrome::Options.new
end

Capybara.default_driver = :chrome
Capybara.default_selector = :xpath