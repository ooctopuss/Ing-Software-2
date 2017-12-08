

#valid client
Given("I am on the list of public authority clients") do
  visit('/client/new')
end


When("I fill in the form with valid data for public authority") do

  fill_in 'client_name',  with: 'Matteo'

	fill_in 'Surname',  with: 'Piovesan'
	fill_in 'Business name',  with: 'piove srl'
	fill_in 'Address',  with: 'via roma'
	fill_in 'Email',   with: 'piove@gmail.com'
	fill_in 'Cf',  with: 'RSSMRA85T10A562S'
	fill_in 'P iva',  with: '07643520567'
  check 'Public authority'


  click_on 'Save'
end

#invalid email

When("I fill in the form with an invalid email for public authority") do
	fill_in 'client_name',  with: 'Matteo'
	fill_in 'Surname',  with: 'Piovesan'
	fill_in 'Business name',  with: 'piove srl'
	fill_in 'Address',  with: 'via roma'
	fill_in 'Email',   with: 'piovegmail.com'
	fill_in 'Cf',  with: 'RSSMRA85T10A562S'
	fill_in 'P iva',  with: '07643520567'
  check 'Public authority'
	click_on 'Save'
end

#address blank

When("I dont't fill in the form an address for public authority") do
	fill_in 'Name',  with: 'Matteo'
	fill_in 'Surname',  with: 'Piovesan'
	fill_in 'Business name',  with: 'piove srl'
	fill_in 'Address',  with: ''
	fill_in 'Email',   with: 'piove@gmail.com'
	fill_in 'Cf',  with: 'RSSMRA85T10A562S'
	fill_in 'P iva',  with: '07643520567'
  check 'Public authority'
	click_on 'Save'
end




#invalid p_iva

When("I fill in the form with an invalid p_iva for public authority") do
	fill_in 'Name',  with: 'Matteo'
	fill_in 'Surname',  with: 'Piovesan'
	fill_in 'Business name',  with: 'piove srl'
	fill_in 'Address',  with: 'via roma'
	fill_in 'Email',   with: 'piove@gmail.com'
	fill_in 'Cf',  with: 'RSSMRA85T10A562S'
	fill_in 'P iva',  with: '07647'
  check 'Public authority'
	click_on 'Save'
end

#cf blank

When("I leave the cf blank for public authority") do
	fill_in 'Name',  with: 'Matteo'
	fill_in 'Surname',  with: 'Piovesan'
	fill_in 'Business name',  with: 'piove srl'
	fill_in 'Address',  with: 'via roma'
	fill_in 'Email',   with: 'piove@gmail.com'
	fill_in 'Cf',  with: ''
	fill_in 'P iva',  with: '07643520567'
  check 'Public authority'
	click_on 'Save'
end
