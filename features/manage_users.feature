Feature: Manage users
  In order to manage access rights
  As an admin
  I want to create and manage users
  
  Scenario: Add new users
    Given I am on the new user page:
    When I fill in "Name" with "name 1"
    And I fill in "Password" with "password 1"
    And I fill in "Password Confirmation" with "password 1"
    And I press "Create"
    Then I should see "name 1"

  Scenario: Delete user
    Given the following users:
      |name   |password   |
      |name 1 |password 1 |
      |name 2 |password 2 |
      |name 3 |password 3 |
      |name 4 |password 4 |
    When I delete the 3rd user
    Then I should see the following users:
      |name   |
      |name 1 |
      |name 2 |
      |name 4 |
