# operationsATM
_Implementation of BDD Scenarios in Gherkin_

# Description

This repository contains the implementation of scenarios in Gherkin based on a specific user story and acceptance criteria. The purpose of this project is to demonstrate how to write and structure test scenarios using the Gherkin Behavioral Testing Specification (BDD) language.

# Contents

### User Story
Perform money operations through ATM

### Acceptance Criteria: 

1. As a Customer I want to Login to my account using card and PIN code So that I can perform the transactions
   
	a. System must validate the card and pin code

	b. If customer enters wrong pin code 3 times the system locks the card

2. As a Customer I want to check the balance of my bank account So that I can perform transactions
   
	a. Customer needs to be logged in before checking balance

	b. Balances is displayed

3. As a Customer I want to deposit cash in my bank account through ATM So that I may save my time and perform transactions later
   
	a. Customer needs to be logged in before depositing cash

	b. System should verify the amount of cash deposited by checking with the user

	c. If the user doesn’t agree then the system ejects back the cash

	d. If Ok the account balance is updated and displayed

4. As a Customer I want to deposit check in my bank account through ATM So that I may save my time and perform transactions later
   
	a. Customer needs to be logged in before depositing check

	b. System should verify the amount written on the deposited check by asking the user

	c. If the user doesn’t agree then the system ejects back the check 

	d. If Ok the account balance is updated and displayed

5. As a Customer I want to withdraw cash from my bank account through ATM So that I may save my time
    
	a. Customer needs to be logged in before withdrawing cash

	b. System checks to see if the request amount exceeds the balance 

	c. If so the system displays the balance and asks the user to enter a new amount

	d. If amount entered is less than the account balance cash is dispensed and the new balance is displayed

6. As a Customer I want to transfer money from my account to another bank account through ATM So that I may save my time
    
	a. Customer needs to be logged in before transferring amount

	b. System should check the receivers account number and validate it prior to performing the transactions

	c. If Ok the local account balance is updated and displayed.

	d. System should update both accounts concurrently

7. As a Customer I want to logout from my bank account through ATM So that I may end up my ATM session
   
	a. System asks user if the user wants session report and receipt for the entire session. 

	b. If yes then the receipt is dispensed 

	c. User is logged off from the account

### Scenarios in Gherkin: 
Set of .feature files containing the scenarios written in Gherkin, following the defined acceptance criteria.

# Repository Structure

cypress/features/: Folder containing the scenario files in Gherkin.

README.md: This project description file.

# How to Use this Repository

1. Clone this repository to your local machine
  git clone https://github.com/psrivera90/operationsATM.git

2. Navigate to the project folder.
  cd operationsATM

3. Check out the .feature files in the cypress/features/ folder to see the test scenarios in Gherkin.

# Contributions

If you would like to contribute to this project, please follow these steps:

1. Fork the repository.
2. Create a new branch (git checkout -b feature/new-feature).
3. Make your changes and commit (git commit -am 'Add new feature').
4. Push your changes to your fork (git push origin feature/new-feature).
5. Open a Pull Request.
