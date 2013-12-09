Feature:

In order to use the task manager platform
As someone who is part of a team
I want to be able to sign up

Background:
Given a team has already been added

Scenario: Signing up

Given I am on the user sign in page
And I follow "Sign up"
And I fill out the signup page
And I press "Sign up"
Then I should see "signed up successfully"

Scenario: Signing in sucessfully

Given a user has already been added
Given I am on the user login page
And I fill out the signin page
And I press "Sign in"
Then I should see "Signed in successfully"
