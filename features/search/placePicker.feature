Feature: Place picker

    @Critical @smoke
    Scenario: Select a place
        Given user is on search form
        When adds desired origin place
        Then place populates place picker field

    @automated-web
    Scenario: Add another place
        Given user is on search form


