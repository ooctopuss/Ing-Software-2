Feature: create an activity
	In order to keep track of activity in my app
	As a user
	I want to create a new activity

	Background:
		Given I am a new, authenticated user
		And I am logged in
@javascript
	Scenario: create a valid activity
		Given I am on the list of activities
    When I click on "Add new"
    And I fill in the form with valid info
    And I click on "Save"
    Then I should see the new activity in the list

@javascript
  Scenario: can't leave the name blank
    Given I am on the list of activities
    When I click on "Add new"
    And I dont't fill in the form a name
    And I click on "Save"
    Then I should see an error
@javascript
  Scenario: can't leave the description blank
    Given I am on the list of activities
    When I click on "Add new"
    And I dont't fill in the form a description
    And I click on "Save"
    Then I should see an error
