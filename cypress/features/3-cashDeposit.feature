Feature: Cash deposit

As a Customer I want to to deposit cash in my bank account through ATM So that I may save my time and perform transactions later.

Background:
    Given the user is a client
    * the user logged into his bank account

Scenario: successful cash deposit
    When the user deposit cash at the ATM
    * the system verifies with the user the amount of cash deposited 
    * the user confirm the amount deposited
    Then the system should update the bank account balace
    * the system show the new balance

Scenario: rejection of deposit due to discrepancy in the amount
    When the user deposit cash at the ATM
    * the system verifies with the user the amount of cash deposited 
    * the user does not agree with the amount of cash deposited
    Then the system should expel the money

Scenario: login requirement before deposit
    When the user try to deposit cash at the ATM whitout logging in
    Then the system should prompt you to log in first