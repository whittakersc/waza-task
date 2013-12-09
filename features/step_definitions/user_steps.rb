Given(/^I fill out the signup page$/) do
  fill_in('Email', :with => 'qwerty@gmail.com')
  fill_in('Password', :with => 'qwertyui')
  fill_in('Password confirmation', :with => 'qwertyui')
  fill_in('Job title', :with => 'Analyst')
  select('Financial Control', :from => "Team")
end

Given(/^a user has already been added$/) do
  create(:user)
end

Given(/^I fill out the signin page$/) do
  fill_in('Email', :with => 'b@company.com')
  fill_in('Password', :with => 'qwertyuii')
end

