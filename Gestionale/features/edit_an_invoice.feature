Feature: edit an invoice
	In order to mantain my app up to date
	As a user
	I want edit a invoice

	Background:
	Given I am a new, authenticated user
	And I am logged in
	And I have the client
	And I have an activity
	And I have second client
	And I have second activity

@javascript
  Scenario: change the hours_standard of an invoice
		Given there is an invoice
		And I am viewing the details of an invoice
		When I click on "Edit"
		And I change the hours_standard to "25"
		And I click on "Save"
		Then I am on the page of the invoice
		And the hours_standard of the invoice is "25"

@javascript
  Scenario: can't insert hours_standard smaller or equal to 0
  	Given there is an invoice
  	And I am viewing the details of an invoice
  	When I click on "Edit"
  	And I change the hours_standard to "-2"
  	And I click on "Save"
  	Then I should see an error

@javascript
  Scenario: change the rate_hour_standard of an invoice
    Given there is an invoice
    And I am viewing the details of an invoice
    When I click on "Edit"
    And I change the rate_hour_standard to "25"
    And I click on "Save"
    Then I am on the page of the invoice
    And the rate_hour_standard of the invoice is "25"

@javascript
  Scenario: can't insert rate_hour_standard smaller  equal to 0
    Given there is an invoice
    And I am viewing the details of an invoice
    When I click on "Edit"
    And I change the rate_hour_standard to "-2"
    And I click on "Save"
    Then I should see an error

@javascript
  Scenario: change the hours_extra of an invoice
    Given there is an invoice
    And I am viewing the details of an invoice
    When I click on "Edit"
    And I change the hours_extra to "25"
    And I click on "Save"
    Then I am on the page of the invoice
    And the hours_extra of the invoice is "25"

@javascript
  Scenario: can't insert hours_extra smaller than 0
    Given there is an invoice
    And I am viewing the details of an invoice
    When I click on "Edit"
    And I change the hours_extra to "-2"
    And I click on "Save"
    Then I should see an error
@javascript
  Scenario: change the rate_hour_standard of an invoice
    Given there is an invoice
    And I am viewing the details of an invoice
    When I click on "Edit"
    And I change the rate_hour_standard to "25"
    And I click on "Save"
    Then I am on the page of the invoice
    And the rate_hour_standard of the invoice is "25"
@javascript
  Scenario: can't insert rate_hour_standard smaller than 0
    Given there is an invoice
    And I am viewing the details of an invoice
    When I click on "Edit"
    And I change the rate_hour_standard to "-2"
    And I click on "Save"
    Then I should see an error

@javascript
  Scenario: change the date_of_issue of an invoice
    Given there is an invoice
    And I am viewing the details of an invoice
    When I click on "Edit"
    And I change the date_of_issue to "October 31, 2017 22:30"
    And I click on "Save"
    Then I am on the page of the invoice
    And the date_of_issue of the invoice is "October 31, 2017 22:30"

@javascript
  Scenario: can't leave the date_of_issue blank
  	Given there is an invoice
  	And I am viewing the details of an invoice
  	When I click on "Edit"
  	And I change the date_of_issue to ""
  	And I click on "Save"
  	Then I should see an error
@javascript
  Scenario: change the client of an invoice
    Given there is an invoice

    And I am viewing the details of an invoice
    When I click on "Edit"
    And I select another client
    And I click on "Save"
    Then I am on the page of the invoice
    Then the client is the new client selected


@javascript
  Scenario: change the activity of an invoice
    Given there is an invoice
    And I am viewing the details of an invoice
    When I click on "Edit"
    And I select another activity
    And I click on "Save"
    Then I am on the page of the invoice
    And the activity is the new activity selected


@javascript
	Scenario: change the penalty_clause of an invoice
	   Given there is an invoice
	   And I am viewing the details of an invoice
	   When I click on "Edit"
	   And I change the penalty_clause to "3000"
	   And I click on "Save"
	   Then I am on the page of the invoice
	   And the penalty_clause of the invoice is "3000"
