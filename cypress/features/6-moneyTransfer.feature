Feature: Money transfer

As a Customer I want to transfer money from my account to another bank account through ATM So that I may save my time.

Background:
    Given the user is a client

Scenario: successful transfer between accounts
    * the user logged into his bank account
    * the user has sufficient balance in his account
    * the user knows the recipients account number
    When the user makes a money transfer to the recipient
    Then the system should update the bank account balace
    * the system show the new balance
    * the system should update the recipients account balance

Scenario: recipient account number verification
    * the user logged into his bank account
    * the user wants to make a money transfer
    When The user enters the recipients account number
    Then the system should verify and validate the recipients account number
    * the system displays a confirmation message to continue with the transfer

Scenario: requirement to log in before transfer
    When the user tries to transfer money to another account without logging in
    Then the system should prompt you to log in first