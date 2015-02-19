Feature: Create a self assessment

  Background: Login
    Given I login to the Reviews site with a "department lead useR"


  Scenario: Create an assessment
    Given I navigate to the Self Assessment Page
    And I complete my review
