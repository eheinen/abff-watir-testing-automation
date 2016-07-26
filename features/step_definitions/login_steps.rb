Given(/^I am on LoginPage$/) do
  visit_page LoginPage
  @browser.title.should eq(@current_page.title)
end

When(/^I fill "([^"]*)" in login field$/) do |value|
  @current_page.login = value
end

When(/^I fill "([^"]*)" in password field$/) do |value|
  @current_page.password = value
end

When(/^^I click on sign in button$/) do
  @current_page.sign_in
end

When(/^^I click on clear button$/) do
  @current_page.clear
end

Then(/^I should be redirected to HomePage$/) do
  visit_page HomePage
  @current_page.title.should eq(@browser.title)
end

Then(/^I should stay on the same page$/) do
  @current_page.title.should eq(@browser.title)
end

Then(/^I should see the login field blank$/) do
  @current_page.login.should be_empty
end

Then(/^I should see the password field blank$/) do
  @current_page.password.should be_empty
end

Then(/^I should see the message "([^"]*)"$/) do |message|
  sleep 1
  @current_page.message.should include(message)
end
