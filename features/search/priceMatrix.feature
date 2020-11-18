Feature: Price Matrix

    @Medium @smoke
    Scenario: Expand price matrix
        Given I am on result page of return flights
        When I click on "Pricing table" button
        Then Price matrix should be expanded

    @Medium
    Scenario: Collapse price matrix
        Given I am on result page of return flights
        And price matrix is expanded
        When I click on closing button inside price matrix modal
        Then Price matrix should be collapsed

    @Medium @automated-web
    Scenario: Move departure dates columns
    Background:
        Given I am on result page of return flights
        And price matrix is expanded

    @smoke
    Scenario: Move Departure dates forward
        When I click on right arrow to move departure dates
        Then Departure dates columns should move forward
        And prices for new dates are loaded

    Scenario: Move Departure dates backward
        When I click on left arrow to move departure dates
        Then Departure dates columns should move backward
        And prices for new dates are loaded

    @Medium
    Scenario: Move return dates columns
    Background:
        Given I am on result page of return flights
        And price matrix is expanded

    Scenario: Move Return dates up
        When I click on upper arrow to move return dates
        Then Return dates columns should move up
        And prices for new dates are loaded

    @smoke
    Scenario: Move Return dates down
        When I click on down arrow to move return dates
        Then Return dates columns should move down
        And prices for new dates are loaded

    @Medium
    Scenario: Select a date cell
        Given I am on result page of return flights
        And price matrix is expanded
        When I click on any cell on price martix with suitable departure and arrival dates
        Then Result page should update according to selected dates
        And datepicker should update according to selected dates
        And price matrix should stay expanded