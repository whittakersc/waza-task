Feature:

In order to edit the details of a team
As a team user
I want to be able to edit the details of a team

Scenario: Edit team details

Given a team has already been added
Given I am on the homepage
And I follow "Team Details"
And I follow "Edit Details"
And I fill out the edit form details
And I press "Update Team"
Then I should see "Financial Control 1"