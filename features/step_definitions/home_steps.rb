Given(/^I am on HomePage$/) do
  visit_page HomePage
  @browser.title.should eq(@current_page.title)
end

When(/^I hover on animal link$/) do
  @current_page.mn_animal
end

When(/^I click on create animal link$/) do
  @current_page.mn_create_animal
end

Then(/^I should see the create animal form$/) do
  pending 'TODO'
end
