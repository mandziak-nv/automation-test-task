Feature: Check QA Testing -> SDLC page headers count + form filling

  Scenario: Test task scenario
    Given I am on the page "https://www.softwaretestinghelp.com"
    When I click on "QA Testing"
    And I click on "SDLC"
    Then Check page headers
    When I click on "Contact us"
    Then I input "My Name" into Your Name field
    And I input "mail@mail.com" into Your Email field
    And I input "My Subject" into Subject field
    And I input "My New Message" into Message area
    And I wait
