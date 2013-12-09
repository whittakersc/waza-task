Given(/^I fill in the team form correctly$/) do
  create(:team)
end

Given(/^a team has already been added$/) do
  create(:team)
end

Given(/^I fill out the edit form details$/) do
  fill_in('Name', :with => 'Financial Control 1')
end
