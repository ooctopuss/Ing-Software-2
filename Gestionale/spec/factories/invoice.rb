FactoryBot.define do
	factory :invoice do
    hours_standard '10'
    rate_hour_standard '15'
    hours_extra '2'
    rate_hour_extra '20'
    date_of_issue 'October 10, 2017 22:30'
    recessed_date 'October 31, 2017 22:30'
    penalty_clause ''
    client
    activity
	end
end
