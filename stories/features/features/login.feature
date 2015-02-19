Feature: login Feature

  Scenario: Login test
    Given I login to the Reviews site with a "valid User"
    Then I should be logged in
#    And I log out

  Scenario: Login with a team lead user
    Given I login to the Reviews site with a "Team Lead User"
    Then I should be logged in

    Scenario: Login with a department lead user
      Given I login to the Reviews site with a "Department Lead user"
      Then I should be logged in

