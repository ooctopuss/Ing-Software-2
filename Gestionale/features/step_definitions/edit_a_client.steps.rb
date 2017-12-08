Given("there is a client") do
  @client = FactoryBot.create(:client, name: 'Matteo', surname: 'Piovesan',business_name: 'piove srl', address: 'via roma', email:  'piove@gmail.com', cf: 'RSSMRA85T10A562S', p_iva: '07643520567', public_authority: false,    iva: '' )

end

Given("I am viewing the details of a client") do

  visit('/client/'+ @client.id.to_s+'/edit')
end

When("I change the name to {string}") do |string|
  fill_in 'Name', with: string

end
Then ("I am on the page of the client") do
  click_on 'Save'
end
And ("the name of the client is {string}")do |string|
  expect(page).to have_content(string)
end

When("I change the surname to {string}") do |string|
  fill_in 'Surname', with: string
end
And ("the surname of the client is {string}")do |string|
  expect(page).to have_content(string)
end

When("I change the business name to {string}") do |string|
  fill_in 'Business name', with: string
end
And ("the business name of the client is {string}")do |string|
  expect(page).to have_content(string)
end

When("I change the address to {string}") do |string|
  fill_in 'Address', with: string
end
And ("the address of the client is {string}")do |string|
  expect(page).to have_content(string)
end

When("I change the email to {string}") do |string|
  fill_in 'Email', with: string
end
And ("the email of the client is {string}")do |string|
  expect(page).to have_content(string)
end

When("I change the cf to {string}") do |string|
  fill_in 'Cf', with: string
end
And ("the cf of the client is {string}")do |string|
  expect(page).to have_content(string)
end

When("I change the p_iva to {string}") do |string|
  fill_in 'P iva', with: string
end
And ("the p_iva of the client is {string}")do |string|
  expect(page).to have_content(string)
end
