Feature: Error message related to invalid email during registration

  Scenario: Validate the error message is visible
    Given sign in page is opened
    When I click "Create an account"
    And I create an account with invalid email address 
    Then I should be able to see the error message for the below mentioned invalid email addresses
      | email address | 
      | Test_test.com | 
      | Test@.com |
      | Test@test | 
      | Test@test.1 | 
