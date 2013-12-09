Given(/^I fill in the task form$/) do
  fill_in('Description', :with => 'Deliver Report')
  select('Andrew', :from => 'Owner')
  fill_in('Actual_hrs', :with => 1)
  select('To do', :from => 'Status')
end