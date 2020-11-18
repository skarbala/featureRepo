Feature: Trip summary
    As a user I would like to see detailed information about my trip summary.

    @Medium @automated-web
    Scenario: Display one class for each connecting flight
        Given user has selected a connected flight in the selected class
        When user proceeds to the booking page
        Then selected class is shown for each flight in the Trip summary

    @Medium
    Scenario: Display mixed classes
        Given user has selected a connected flight containing flights with different classes
        When user proceeds to the booking page
        Then correct class is shown for each flight in the Trip summary
