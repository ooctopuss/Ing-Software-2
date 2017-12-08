Feature: create a public authority client
	In order to keep track of public authority clients in my app
	As a user
	I want to create a new public authority client

	Background:
		Given I am a new, authenticated user
		And I am logged in


@javascript
  Scenario: create a valid public authority client
		Given I am on the list of public authority clients
    And I fill in the form with valid data for public authority
    Then I should see the new client in the list


@javascript
  Scenario: error when entering invalid email for public authority
    Given I am on the list of clients
    And I fill in the form with an invalid email for public authority
    Then I should see an error


@javascript
  Scenario: can't leave the address blank for public authority
    Given I am on the list of clients
    And I dont't fill in the form an address for public authority
    Then I should see an error


@javascript
  Scenario: can leave the cf blank for public authority
    Given I am on the list of clients
    And I leave the cf blank for public authority
    Then I should see the new client in the list



@javascript
  Scenario: error when entering invalid p_iva for public authority
    Given I am on the list of clients
    And I fill in the form with an invalid p_iva for public authority
    Then I should see an error
