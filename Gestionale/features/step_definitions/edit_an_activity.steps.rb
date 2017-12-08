Given("there is an activity") do
  @activity = FactoryBot.create(:activity)
end

Given("I am viewing the details of an activity") do

  visit('/activity/'+ @activity.id.to_s+'/edit')
end


Then ("I am on the page of the activity") do
  click_on 'Save'
end
And ("the name of the activity is {string}")do |string|
  expect(page).to have_content(string)
end

When("I change the description to {string}") do |string|
  fill_in 'Description', with: string

end

And ("the description of the activity is {string}")do |string|
  expect(page).to have_content(string)
end
