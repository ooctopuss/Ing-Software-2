#login
Given ("I am a new, authenticated user") do
  #visit('/users/sign_up') # ensure that at least
  FactoryBot.create(:user)
end
And("I am logged in") do
  visit('/users/sign_in')
  fill_in "Email", with: "test@example.com"
  fill_in "Password", with: 'f4k3p455w0rd'

  click_on 'Log in'
end


#valid client
Given("I am on the list of clients") do
  visit('/client/new')
end

When("I click on {string}") do |string|
  %{I press (string)}
end
When("I fill in the form with valid data") do

  fill_in 'client_name',  with: 'Matteo'

	fill_in 'Surname',  with: 'Piovesan'
	fill_in 'Business name',  with: 'piove srl'
	fill_in 'Address',  with: 'via roma'
	fill_in 'Email',   with: 'piove@gmail.com'
	fill_in 'Cf',  with: 'RSSMRA85T10A562S'
	fill_in 'P iva',  with: '07643520567'


  click_on 'Save'
end
Then("I should see the new client in the list") do

  client = Client.last
  expect(page).to have_content(client.name)
end

#invalid email

When("I fill in the form with an invalid email") do
	fill_in 'client_name',  with: 'Matteo'
	fill_in 'Surname',  with: 'Piovesan'
	fill_in 'Business name',  with: 'piove srl'
	fill_in 'Address',  with: 'via roma'
	fill_in 'Email',   with: 'piovegmail.com'
	fill_in 'Cf',  with: 'RSSMRA85T10A562S'
	fill_in 'P iva',  with: '07643520567'
	click_on 'Save'
end
Then("I should see an error") do
  expect(page).to have_xpath("//input[@required='required']")
  #expect(page).to have_css('Email is not looking good')
end

#address blank

When("I dont't fill in the form an address") do
	fill_in 'Name',  with: 'Matteo'
	fill_in 'Surname',  with: 'Piovesan'
	fill_in 'Business name',  with: 'piove srl'
	fill_in 'Address',  with: ''
	fill_in 'Email',   with: 'piove@gmail.com'
	fill_in 'Cf',  with: 'RSSMRA85T10A562S'
	fill_in 'P iva',  with: '07643520567'
	click_on 'Save'
end

#invalid cf

When("I fill in the form with an invalid cf") do
	fill_in 'Name',  with: 'Matteo'
	fill_in 'Surname',  with: 'Piovesan'
	fill_in 'Business name',  with: 'piove srl'
	fill_in 'Address',  with: 'via roma'
	fill_in 'Email',   with: 'piove@gmail.com'
	fill_in 'Cf',  with: 'RSSMR'
	fill_in 'P iva',  with: '07643520567'
	click_on 'Save'
end


#invalid p_iva

When("I fill in the form with an invalid p_iva") do
	fill_in 'Name',  with: 'Matteo'
	fill_in 'Surname',  with: 'Piovesan'
	fill_in 'Business name',  with: 'piove srl'
	fill_in 'Address',  with: 'via roma'
	fill_in 'Email',   with: 'piove@gmail.com'
	fill_in 'Cf',  with: 'RSSMRA85T10A562S'
	fill_in 'P iva',  with: '07647'
	click_on 'Save'
end

#cf blank

When("I leave the cf blank") do
	fill_in 'Name',  with: 'Matteo'
	fill_in 'Surname',  with: 'Piovesan'
	fill_in 'Business name',  with: 'piove srl'
	fill_in 'Address',  with: 'via roma'
	fill_in 'Email',   with: 'piove@gmail.com'
	fill_in 'Cf',  with: ''
	fill_in 'P iva',  with: '07643520567'
	click_on 'Save'
end
