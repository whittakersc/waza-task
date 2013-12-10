Feature:
In order to add comments to a BAU task
As a user
I want to be able to add comments to a task

Background: 
Given a user has already been added
Given a BAU task has already been added

Scenario: Add to BAU task
Given I am on the homepage
And I follow "Team Details"
And I follow "Add Comment"
And I fill in "Description" with "Ahoy"
And I press "Create comment"
Then I should see ""

