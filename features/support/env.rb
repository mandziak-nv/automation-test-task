require 'selenium-webdriver'
require 'capybara/cucumber'

Capybara.default_driver =:selenium_chrome

Capybara.default_selector = :xpath
