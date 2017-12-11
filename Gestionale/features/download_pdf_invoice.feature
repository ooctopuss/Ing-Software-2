Feature: Download pdf invoice
	In order to keep track of invoice in my app
	As a user
	I want to download the pdf of Invoice

	Background:

		Given I am a new, authenticated user
		And I am logged in
    And I have an invoice



@javascript
  Scenario: download an invoice
		Given I am on the list of invoices
    And I press on download
  
