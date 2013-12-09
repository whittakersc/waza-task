Feature:

In order to view the details of a team
As a team user
I want to be able to show the details of a team

Scenario: Show team details

Given a team has already been added
Given I am on the homepage
And I follow "Team Details"
Then I should see "The team"