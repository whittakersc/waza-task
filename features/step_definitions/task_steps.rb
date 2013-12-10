Given(/^I fill in the BAU task form$/) do
  fill_in('Description', :with => 'Deliver Report')
  select('Andrew', :from => 'Owner')
  select('To Do', :from => 'Status')
  fill_in('Time', :with => '16:00')
  fill_in('Report tag', :with => 'Balance Sheet')
  fill_in('Expected hrs', :with => 2)
end

Given(/^I fill in the Project task form$/) do
  fill_in('Description', :with => 'Project Report')
  select('Andrew', :from => 'Owner')
  select('To Do', :from => 'Status')
  fill_in('Requested by', :with => 'some bell')
end

Given(/^a BAU task has already been added$/) do
 create(:task_bau)
end

Given(/^a project task has already been added$/) do
  create(:task_project)
end