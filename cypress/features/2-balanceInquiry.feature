Feature: Balance inquiry

As a Customer I want to to check the balance of my bank account So that I can perform transactions.

Scenario: balance check after logging in
    Given the user is a client
    * the user logged into his bank account
    When the user request to check his balance
    Then the system should display the current balance

Scenario: attempted balance inquiry whitout logging in
    Given the user is a client
    * the user is not logged into his bank account
    When the user try to check his balance
    Then the system should prompt you to log in first