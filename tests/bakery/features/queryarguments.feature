Feature: Query arguments

  Scenario: As a Bakery user, I want my query arguments to carry through login on D7 on a path
    Given I visit "http://d7.masterd7.vbox/user/login?s=foo"
    And I enter user "test1" with password "1234"
    Then I should be on the site "http://d7.masterd7.vbox/"
    And I should have "s=foo" in the URL
  
  Scenario: As a Bakery user, I want my query arguments to carry through login on D7
    Given I visit "http://d7.masterd7.vbox/?foo=bar"
    And I login with "test1" and "1234"
    Then I should be on the site "http://d7.masterd7.vbox/"
    And I should have "foo=bar" in the URL

  Scenario: As a Bakery user, I want my query arguments with destination to carry through login on D7 on a path
    Given I visit "http://d7.masterd7.vbox/user/login?destination=filter/tips&foo=bar"
    And I enter user "test1" with password "1234"
    Then I should be on the site "http://d7.masterd7.vbox/"
    And I should have "foo=bar" in the URL
