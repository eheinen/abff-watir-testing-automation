Feature: Home using Page Object Watir

  @in_dev
  Scenario: View create animal page
    Given I am on HomePage
    When I hover on animal link
    And I click on create animal link
    Then I should see the create animal form
