And("I have second client") do
  @client2 =FactoryBot.create(:client, name: 'Fabio', surname: 'Zan',business_name: 'zan srl', address: 'via romana', email:  'zan@gmail.com', cf: 'ZMNLGD84A01H501Y', p_iva: '03190700546', public_authority: false,    iva: '' )

end
And("I have second activity") do
  @activity2 =FactoryBot.create(:activity, name: 'attività 2', description: 'Attività due' )

end
Given("there is an invoice") do
   @invoice=FactoryBot.create(:invoice, client:@client, activity:@activity)
end
Given("I am viewing the details of an invoice") do
  visit('/invoice/'+ @invoice.id.to_s+'/edit')
end
When("I change the hours_standard to {string}") do |string|
  fill_in 'Hours standard', with: string
end
Then ("I am on the page of the invoice") do
  click_on 'Save'
end
And ("the hours_standard of the invoice is {string}")do |string|
  expect(page).to have_content(string)
end

When("I change the hours_extra to {string}") do |string|
  fill_in 'Hours extra', with: string
end
And ("the hours_extra of the invoice is {string}")do |string|
  expect(page).to have_content(string)
end

When("I change the rate_hour_standard to {string}") do |string|
  fill_in 'Rate hour standard', with: string
end
And ("the rate_hour_standard of the invoice is {string}")do |string|
  expect(page).to have_content(string)
end

When("I change the rate_hour_extra to {string}") do |string|
  fill_in 'Rate hour extra', with: string
end
And ("the rate_hour_extra of the invoice is {string}")do |string|
  expect(page).to have_content(string)
end


When("I change the date_of_issue to {string}") do |string|
  fill_in 'Date of issue', with: string
end
And ("the date_of_issue of the invoice is {string}")do |string|
  expect(page).to have_content(string)
end

When("I change the penalty_clause to {string}") do |string|
  fill_in 'Penalty clause', with: string
end
And ("the penalty_clause of the invoice is {string}")do |string|
  expect(page).to have_content(string)
end

When("I select another client") do
  select @client2.name , from: "Client"
end
Then ("the client is the new client selected") do

  invoice = Invoice.last
  expect(page).to have_content(invoice.id)
end

When("I select another activity") do
  select @activity2.name , from: "Activity"
end
Then ("the activity is the new activity selected") do

  invoice = Invoice.last
  expect(page).to have_content(invoice.id)
end
