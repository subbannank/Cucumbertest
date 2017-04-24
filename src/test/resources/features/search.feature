@requires_browser
Feature: Login Action Test
Description: This feature will test a Login and Logout functionality

    
 Scenario: Successful Login with Valid Credentials
    Given User is on Homepage
    When User Navigate to Login Page
    And User enters Username as "subbannan" and Password as "di"
    And User submit the credentials by pressing SignIn
    Then Message displayed Welcome
    
    
  Scenario: Unsuccessful Login with Invalid Credentials
    Given User is on Homepage
    When User Navigate to Login Page
    And User enters Username as "subbannan" and Password as "di1"
    And User submit the credentials by pressing SignIn
    Then Validation message must be displayed
    
   
@skipped
Scenario: Login with null values
	Given  I navigate to login page
	And login id as null 
	And password as null
	When I press login button
	Then  Validation message must be displayed

@skipped
Scenario: Login only with Username 
	Given  I navigate to login page
	And login only with valid Username
	When I user press login button
	Then Validate the Only Username Warning Message


@skipped 
Scenario: Login only with Password 
	Given I navigate to login page
	And password only with valid Password
	When I press login button
	Then  Validation message must be displayed