Feature: Software Testing Help
  Check navigation to QA Testing -> SDLC
  Check page headers count
  Check form filling

  Scenario: Check navigation, headers and form
    Given I am on the page "https://www.softwaretestinghelp.com"
    When I click on "QA Testing"
    And I click on "SDLC"
    Then I check page headers count
    When I click on "Contact us"
    Then I input "My Name" into Your Name field
    And I input "mail@mail.com" into Your Email field
    And I input "My Subject" into Subject field
    And I input "My New Message" into Message area
    And I wait