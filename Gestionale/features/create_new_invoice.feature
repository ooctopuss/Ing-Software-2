Feature: create a new invoice
	In order to keep track of invoices in my app
	As a user
	I want to create a new Invoices

	Background:
		Given I am a new, authenticated user
		And I am logged in
		And I have the client
	  And I have an activity
	@javascript
  Scenario: create a valid Invoice
		Given I am on the list of Invoices
    When I click on "Add new"
    And I fill in the form with valid dat
    And I click on "Save"
    Then I should see the new Invoice in the list
		@javascript
  Scenario: error when entering hours_standard smaller or equal to 0
    Given I am on the list of Invoices
    When I click on "Add new"
    And I fill in the form with a hours_standard smaller or equal to 0
    And I click on "Save"
    Then I should see an error for invoice for hours standard
@javascript
  Scenario: error when entering rate_hour_standard smaller or equal to 0
    Given I am on the list of Invoices
    When I click on "Add new"
    And I fill in the form with a rate_hour_standard smaller or equal to 0
    And I click on "Save"
    Then I should see an error for invoice for rate hour standard
@javascript
  Scenario: error when entering hours_extra smaller than 0
    Given I am on the list of Invoices
    When I click on "Add new"
    And I fill in the form with a hours_extra smaller than 0
    And I click on "Save"
    Then I should see an error for invoice for hour extra
@javascript
  Scenario: error when entering rate_hour_extra smaller than 0
    Given I am on the list of Invoices
    When I click on "Add new"
    And I fill in the form with a rate_hour_standard smaller than 0
    And I click on "Save"
    Then I should see an error for invoice for rate hour extra

@javascript
  Scenario: can't leave the date_of_issue blank
    Given I am on the list of Invoices
    When I click on "Add new"
    And I dont't fill in the form a date_of_issue
    And I click on "Save"
    Then I should see an error
@javascript
  Scenario: error when I don't select a client
    Given I am on the list of Invoices
    When I click on "Add new"
    And I don't select a valid client
    And I click on "Save"
    Then I should see an error
@javascript
  Scenario: error when I don't select an activity
      Given I am on the list of Invoices
      When I click on "Add new"
      And I don't select a valid activity
      And I click on "Save"
      Then I should see an error
