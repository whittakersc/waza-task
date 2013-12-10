Feature:
In order to add comments to a project task
As a user
I want to be able to add comments to a task

Background: 
Given a user has already been added
Given a project task has already been added

Scenario: Add to Project task
Given I am on the homepage
And I follow "Team Details"
And I follow "Add Comment"
And I fill in "Description" with "Yoyo"
And I press "Create comment"
Then I should see ""