Feature: Travel tip banner

    @Medium
    Scenario: Add radius
        Given user is on result page
        And departure place is not radius
        And travel tip banner is shown

        When user click on banner button (Save time)
        Then departure place picker change to radius
