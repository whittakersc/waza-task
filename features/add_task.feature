Feature:

In order to add tasks to a team list
As a manager
I want to be able to add tasks

Background:
Given a user has already been added

Scenario: Add BAU task
Given I am on the homepage
And I follow "Team Details"
And I follow "Add BAU"
And I fill in the BAU task form
And I press "Create Task"
Then I should see "BAU"

Scenario: Add Project task
Given I am on the homepage
And I follow "Team Details"
And I follow "Add Project"
And I fill in the Project task form
And I press "Create Task"
Then I should see "Type: Project"
