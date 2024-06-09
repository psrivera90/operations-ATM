Feature: ATM login

As a Customer I want to Login to my account using card and PIN code So that I can perform the transactions.

Scenario: log in successfully with card and PIN code
    Given the user is a client
    * the user have a valid card
    * the usedr know the PIN code
    When the user enter the card 
    * the user enter the PIN code
    Then the system should allow you to log in
    
Scenario: log in with incorrect PIN code
    Given the user is a client
    * the user have a valid card
    * the user entered the wrong PIN code twice
    When the user enter the wrong PIN code for the third time
    Then the system should block the card
    
Scenario: log in with invalid card
    Given the user is a client
    * the user have a invalid card
    When the user try to log with the card and PIN code
    Then the system should report that the card is invalid