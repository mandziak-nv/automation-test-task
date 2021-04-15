Given(/^I am on the page "([^"]*)"$/) do |page|
  visit page
end

When(/^I click on "([^"]*)"$/) do |element|
  find("//a[text()='" + element + "']").click
end

Then(/^Check page headers$/) do
  expect(all("//h1").length).to be == 1
  expect(all("//h2").length).to be > 1
end

And(/^I input "([^"]*)" into Your Name field$/) do |text|
  find("//input[@name='your-name']").set text
end

And(/^I input "([^"]*)" into Your Email field$/) do |text|
  find("//input[@name='your-email']").set text
end

And(/^I input "([^"]*)" into Subject field$/) do |text|
  find("//input[@name='your-subject']").set text
end

And(/^I input "([^"]*)" into Message area$/) do |text|
  find("//textarea[@name='your-message']").set text
end

And(/^I wait$/) do
  sleep 1
end