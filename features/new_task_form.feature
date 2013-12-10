Feature:

In order to add two types of task
As a team
I want to be able to have separate forms

Background:
Given a user has already been added

Scenario: Show BAU form
Given I am on the homepage
And I follow "Team Details"
And I follow "Add BAU"
Then I should see "Report tag"

Scenario: Show Project form
Given I am on the homepage
And I follow "Team Details"
And I follow "Add Project"
Then I should see "Requested by"