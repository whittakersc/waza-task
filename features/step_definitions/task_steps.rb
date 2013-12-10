Given(/^I fill in the task form$/) do
  fill_in('Description', :with => 'Deliver Report')
  select('Andrew', :from => 'Owner')
  fill_in('Actual hrs', :with => 1)
  select('To Do', :from => 'Status')
end