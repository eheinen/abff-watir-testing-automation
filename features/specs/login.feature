Feature: Login

    @in_dev
    Scenario: Authentication with a valid user
        Given I am on LoginPage
        When I fill "admin" in login field
        And I fill "admin" in password field
        And I click on sign in button
        Then I should see the message "Autenticação realizada com sucesso!"
        And I should be redirected to HomePage

    Scenario: Authentication with user and password invalid
        Given I am on LoginPage
        When I fill "test" in login field
        And I fill "test" in password field
        And I click on sign in button
        Then I should see the message "Ops! Usuário ou senha inválidos!"
        And I should stay on the same page

    Scenario: Authentication with user and password blank
        Given I am on LoginPage
        When I fill "" in login field
        And I fill "" in password field
        And I click on sign in button
        Then I should see the message "Você deve informar os campos de usuário e senha!"
        And I should stay on the same page

    Scenario: Clear values in fields
        Given I am on LoginPage
        When I fill "admin" in login field
        And I fill "admin" in password field
        And I click on clear button
        Then I should see the login field blank
        And I should see the password field blank
