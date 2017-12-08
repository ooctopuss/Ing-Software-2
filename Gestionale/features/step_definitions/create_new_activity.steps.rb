#valid activity
Given("I am on the list of activities") do
	visit('/activity/new')
end
When("I fill in the form with valid info") do
	fill_in 'Name',  with: 'Activity1'
	fill_in 'Description',  with: 'Activity 1 '

	click_on 'Save'
end


#name blank

When("I dont't fill in the form a name") do
	fill_in 'Name',  with: ''
	fill_in 'Description',  with: 'Activity 1 '
	click_on 'Save'
end

#description blank
When("I dont't fill in the form a description") do
	fill_in 'Name',  with: 'act'
	fill_in 'Description',  with: ''
	click_on 'Save'
end
Then("I should see the new activity in the list") do

  activity = Activity.last
  expect(page).to have_content(activity.name)
end
