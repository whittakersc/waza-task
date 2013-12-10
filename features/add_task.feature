Feature:

In order to add tasks to a team list
As a manager
I want to be able to add tasks

Background:
Given a user has already been added

Scenario:
Given I am on the homepage
And I follow "Team Details"
And I follow "Add task"
And I fill in the task form
And I press "Create Task"
Then I should see "Your task"
