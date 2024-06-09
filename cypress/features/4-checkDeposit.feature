Feature: Check deposit

As a Customer I want to to deposit check in my bank account through ATM So that I may save my time and perform transactions later.

Background:
    Given the user is a client

Scenario: successful check deposit
    * the user logged into his bank account
    When the user deposit a check in the ATM
    * the system verifies with the user the amount of check deposited 
    * the user confirm the amount of the check
    Then the system should update the bank account balace
    And the system show the new balance

Scenario: rejection of deposit due to discrepancy in the amount of the check
    * the user logged into his bank account
    When the user deposit a check in the ATM
    * the system verifies with the user the amount of check deposited 
    * the user does not agree with the amount of check deposited
    Then the system should eject the check

Scenario: login requirement before deposit
    When the user try to deposit check at the ATM whitout logging in
    Then the system should prompt you to log in first