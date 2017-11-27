Feature: edit a public authority client
	In order to mantain my app up to date
	As a user
	I want edit a public authority client

  Background:
    Given public_authority = true

  Scenario: change the name of a client
		Given there is a client
		And I am viewing the details of a client
		When I click on "Edit"
		And I change the name to "ABCDEFG"
		And I click on "Save"
		Then I am on the page of the client
		And the name of the client is "ABCDEFG"

  Scenario: change the surname of a client
  	Given there is a client
  	And I am viewing the details of a client
  	When I click on "Edit"
  	And I change the surname to "ABCDEFG"
  	And I click on "Save"
  	Then I am on the page of the client
  	And the surname of the client is "ABCDEFG"

  Scenario: change the business name of a client
  	Given there is a client
  	And I am viewing the details of a client
  	When I click on "Edit"
  	And I change the business name to "ABCDEFG"
  	And I click on "Save"
  	Then I am on the page of the client
  	And the business name of the client is "ABCDEFG"

  Scenario: change the address of a client
  	Given there is a client
  	And I am viewing the details of a client
  	When I click on "Edit"
  	And I change the address to "ABCDEFG"
  	And I click on "Save"
  	Then I am on the page of the client
  	And the address of the client is "ABCDEFG"

  Scenario: can't leave the address blank
  	Given there is a client
  	And I am viewing the details of a client
  	When I click on "Edit"
  	And I change the address to ""
  	And I click on "Save"
  	Then I should see an error

  Scenario: change the email of a client
  	Given there is a client
  	And I am viewing the details of a client
  	When I click on "Edit"
  	And I change the email to "ABCDEFG@gmail.com"
  	And I click on "Save"
  	Then I am on the page of the client
  	And the email of the client is "ABCDEFG@gmail.com"

  Scenario: can't leave the email blank
  	Given there is a client
  	And I am viewing the details of a client
  	When I click on "Edit"
  	And I change the email to ""
  	And I click on "Save"
  	Then I should see an error


  Scenario: can't change the cf of a client
  	Given there is a client
  	And I am viewing the details of a client
  	When I click on "Edit"
  	And I change the cf to "RSSMRA85T10A562S"
  	And I click on "Save"
  	Then I should see an error

  Scenario: change the p_iva of a client
  	Given there is a client
  	And I am viewing the details of a client
  	When I click on "Edit"
  	And I change the p_iva to "07643520567"
  	And I click on "Save"
  	Then I am on the page of the client
  	And the p_iva of the client is "07643520567"

  Scenario: can't leave the p_iva blank
  	Given there is a client
  	And I am viewing the details of a client
  	When I click on "Edit"
  	And I change the p_iva to ""
  	And I click on "Save"
  	Then I should see an error
