Feature: Place picker

    @Critical @smoke
    Scenario: Select a place
        Given user is on search form

        When user clicks inside place picker field
        And user starts typing place name
        And user selects desired place

        Then place populates place picker field

