Feature: Logging out

As a Customer I want to logout from my bank account through ATM So that I may end up my ATM session.

Background:
    Given the user is a client
    * the user logged into his bank account
    When the user select the option to log out
    * the system should ask the user if he wants a session report and a receipt

Scenario: successful logout
    * the user confirms
    Then the system should deliver the receipt
    * the system should disconnect the user from his bank account

Scenario: logout whitout receipt
    * the user reject the option of receiving a receipt
    Then the system should disconnect the user from their bank account without generating a receipt