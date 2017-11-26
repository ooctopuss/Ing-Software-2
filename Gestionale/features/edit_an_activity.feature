Feature: edit an activity
	In order to mantain my app up to date
	As a user
	I want edit an activity


  Scenario: change the name of an activity
		Given there is an activity
		And I am viewing the details of an activity
		When I click on "Edit"
		And I change the name to "ABCDEFG"
		And I click on "Save"
		Then I am on the page of the activity
		And the name of the activity is "ABCDEFG"

  Scenario: can't leave the name blank
  	Given there is an activity
  	And I am viewing the details of an activity
  	When I click on "Edit"
  	And I change the name to ""
  	And I click on "Save"
  	Then I should see an error

  Scenario: change the description of an activity
    Given there is an activity
    And I am viewing the details of an activity
    When I click on "Edit"
    And I change the description to "ABCDEFG"
    And I click on "Save"
    Then I am on the page of the activity
    And the description of the activity is "ABCDEFG"

  Scenario: can't leave the description blank
    Given there is an activity
    And I am viewing the details of an activity
    When I click on "Edit"
    And I change the description to ""
    And I click on "Save"
    Then I should see an error
