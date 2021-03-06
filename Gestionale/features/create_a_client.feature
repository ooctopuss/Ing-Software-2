Feature: create a client
	In order to keep track of clients in my app
	As a user
	I want to create a new client

	Background:

		Given I am a new, authenticated user
		And I am logged in



@javascript
  Scenario: create a valid client
		Given I am on the list of clients
    When I click on "Add new"
    And I fill in the form with valid data
    And I click on "Save"
    Then I should see the new client in the list

@javascript
  Scenario: error when entering invalid email
    Given I am on the list of clients
    When I click on "Add new"
    And I fill in the form with an invalid email
    And I click on "Save"
    Then I should see an error
@javascript
  Scenario: can't leave the address blank
    Given I am on the list of clients
    When I click on "Add new"
    And I dont't fill in the form an address
    And I click on "Save"
    Then I should see an error


@javascript
  Scenario: error when entering invalid cf
    Given I am on the list of clients
    When I click on "Add new"
    And I fill in the form with an invalid cf
    And I click on "Save"
    Then I should see an error

@javascript
  Scenario: error when entering invalid p_iva
    Given I am on the list of clients
    When I click on "Add new"
    And I fill in the form with an invalid p_iva
    And I click on "Save"
    Then I should see an error


@javascript
  Scenario: can't leave the cf blank
    Given I am on the list of clients
    When I click on "Add new"
    And I leave the cf blank
    And I click on "Save"
    Then I should see an error
