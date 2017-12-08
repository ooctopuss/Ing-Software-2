Given("I am on the list of Invoices") do
	visit('/invoice/new')
end
And("I have the client")do
	@client = FactoryBot.create(:client, name: 'Matteo', surname: 'Piovesan',business_name: 'piove srl', address: 'via roma', email:  'piove@gmail.com', cf: 'RSSMRA85T10A562S', p_iva: '07643520567', public_authority: false,    iva: '' )

end
And ("I have an activity") do
	@activity = FactoryBot.create(:activity)
end

When("I fill in the form with valid dat") do

	fill_in 'Hours standard',  with: '20'
	fill_in 'Rate hour standard',  with: '10'
	fill_in 'Hours extra',  with: '2'
	fill_in 'Rate hour extra',  with: '20'
	fill_in 'Date of issue',  with: 'November 29, 2017 16:36'
	fill_in 'Recessed date',  with: 'December 07, 2017 16:36'
	fill_in 'Penalty clause',  with: ''
	select @client.name , from: "Client"
	select @activity.name , from: "Activity"


	click_on 'Save'
end
Then("I should see the new Invoice in the list") do
  invoice = Invoice.last
  expect(page).to have_content(invoice.id)
end


When("I fill in the form with a hours_standard smaller or equal to 0") do
	fill_in 'Hours standard',  with: '-2'
	fill_in 'Rate hour standard',  with: '10'
	fill_in 'Hours extra',  with: '2'
	fill_in 'Rate hour extra',  with: '20'
	fill_in 'Date of issue',  with: 'November 29, 2017 16:36'
	fill_in 'Recessed date',  with: 'December 07, 2017 16:36'
	fill_in 'Penalty clause',  with: ''
	select @client.name , from: "Client"
	select @activity.name , from: "Activity"

	click_on 'Save'
end
	Then("I should see an error for invoice for hours standard") do
		expect(find_field('Hours standard').value).to be < '0'
	end

When("I fill in the form with a rate_hour_standard smaller or equal to 0") do
	fill_in 'Hours standard',  with: '20'
	fill_in 'Rate hour standard',  with: '-2'
	fill_in 'Hours extra',  with: '2'
	fill_in 'Rate hour extra',  with: '20'
	fill_in 'Date of issue',  with: 'November 29, 2017 16:36'
	fill_in 'Recessed date',  with: 'December 07, 2017 16:36'
	fill_in 'Penalty clause',  with: ''
	select @client.name , from: "Client"
	select @activity.name , from: "Activity"

	click_on 'Save'
end
Then("I should see an error for invoice for rate hour standard") do
	expect(find_field('Rate hour standard').value).to be < '0'
end

When("I fill in the form with a hours_extra smaller than 0")do
	fill_in 'Hours standard',  with: '20'
	fill_in 'Rate hour standard',  with: '10'
	fill_in 'Hours extra',  with: '-2'
	fill_in 'Rate hour extra',  with: '20'
	fill_in 'Date of issue',  with: 'November 29, 2017 16:36'
	fill_in 'Recessed date',  with: 'December 07, 2017 16:36'
	fill_in 'Penalty clause',  with: ''
	select @client.name , from: "Client"
	select @activity.name , from: "Activity"

	click_on 'Save'
end
Then("I should see an error for invoice for hour extra") do
	expect(find_field('Hours extra').value).to be <= '0'
end

When("I fill in the form with a rate_hour_standard smaller than 0") do
	fill_in 'Hours standard',  with: '20'
	fill_in 'Rate hour standard',  with: '10'
	fill_in 'Hours extra',  with: '2'
	fill_in 'Rate hour extra',  with: '-20'
	fill_in 'Date of issue',  with: 'November 29, 2017 16:36'
	fill_in 'Recessed date',  with: 'December 07, 2017 16:36'
	fill_in 'Penalty clause',  with: ''
	select @client.name , from: "Client"
	select @activity.name , from: "Activity"

	click_on 'Save'
end
Then("I should see an error for invoice for rate hour extra") do
	expect(find_field('Rate hour extra').value).to be <= '0'
end

When("I dont't fill in the form a date_of_issue") do
	fill_in 'Hours standard',  with: '20'
	fill_in 'Rate hour standard',  with: '10'
	fill_in 'Hours extra',  with: '2'
	fill_in 'Rate hour extra',  with: '20'
	fill_in 'Date of issue',  with: ''
	fill_in 'Recessed date',  with: 'December 07, 2017 16:36'
	fill_in 'Penalty clause',  with: ''
	select @client.name , from: "Client"
	select @activity.name , from: "Activity"

	click_on 'Save'
end

When("I don't select a valid client") do
	fill_in 'Hours standard',  with: '20'
	fill_in 'Rate hour standard',  with: '10'
	fill_in 'Hours extra',  with: '2'
	fill_in 'Rate hour extra',  with: '20'
	fill_in 'Date of issue',  with: 'November 29, 2017 16:36'
	fill_in 'Recessed date',  with: 'December 07, 2017 16:36'
	fill_in 'Penalty clause',  with: ''

	select @activity.name , from: "Activity"

	click_on 'Save'
end
When("I don't select a valid activity")do
	fill_in 'Hours standard',  with: '20'
	fill_in 'Rate hour standard',  with: '10'
	fill_in 'Hours extra',  with: '2'
	fill_in 'Rate hour extra',  with: '20'
	fill_in 'Date of issue',  with: 'November 29, 2017 16:36'
	fill_in 'Recessed date',  with: 'December 07, 2017 16:36'
	fill_in 'Penalty clause',  with: ''
	select @client.name , from: "Client"

	click_on 'Save'
end
