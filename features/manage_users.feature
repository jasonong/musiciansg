Feature: Manage users
  In order to manage access rights
  As an admin
  I want to create and manage users
  
  Scenario: Add new users
    Given I am on the new user page
    When I fill in "Name" with "name 1"
    And I fill in "Password" with "password 1"
    And I fill in "Confirm Password" with "password 1"
    And I press "Create"
    Then I should see "name 1"

  Scenario: Delete frooble
    Given the following froobles:
      |name|color|description|
      |name 1|color 1|description 1|
      |name 2|color 2|description 2|
      |name 3|color 3|description 3|
      |name 4|color 4|description 4|
    When I delete the 3rd frooble
    Then I should see the following froobles:
      |name|color|description|
      |name 1|color 1|description 1|
      |name 2|color 2|description 2|
      |name 4|color 4|description 4|
