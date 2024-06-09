Feature: Cash withdrawal 

As a Customer I want to withdraw cash from my bank account through ATM So that I may save my time.

Background:
    Given the user is a client

Scenario: successful cash withdrawal
    * the user logged into his bank account
    * the user has sufficient balance in his account
    When the user withdraws cash from the ATM
    Then the system should dispense the requested cash
    * the system show the new balance

Scenario: insufficient balance verification
    * the user logged into his bank account
    * the user does not have enough balance in his bank account
    When the user tries to withdraw cash from the ATM
    Then the system should inform the user that he does not have sufficient funds
    * the system should request new amount
    
Scenario: requirement to log in before withdrawal
    When the user is trying to withdraw cash from the ATM without logging in
    Then the system should prompt you to log in first