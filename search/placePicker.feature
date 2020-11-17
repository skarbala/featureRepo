Feature: Place picker

    @Critical
    Scenario: Select a place
        Given user is on search form

        When user clicks inside placePicker field
        And user starts typing place name
        And user selects desired place

        Then place populates placePicker field

    @Critical
    Scenario: Add multiple places
        Given user is on search form
        And a place is already selected as a destination
        When user clicks on empty space in destination placePicker
        And user types place name
        And user selects desired place
        Then second place populates destination field

    @Critical
    Scenario: Add radius of selected place
        Given user is on search form
        And a place is already selected as a destination
        When user clicks on empty space in destination placePicker
        And user selects selected place with "+ 250km"
        Then 250km radius of selected place replace destination placePicker

    @Medium
    Scenario: Bigger radius replaces single place
        Given user is on search form
        And a place of city is already selected as a destination
        When user clicks on empty space in destination placePicker
        And user types a name of country of selected city
        And user selects desired country
        Then country replaces city that includes

    @Critical
    Scenario: Add several places in open placepicker
        Given user is on a search form
        When user clicks inside placePicker field
        And user starts typing place name
        And user hover cursor over desired place
        And click check box
        Then place populates placePicker field
        And add selected place as included
        And place picker stays open with nearby places

    @Critical
    Scenario: Remove already selected place
        Given user is on search form
        And a place is already selected

        When User click on "x" button on place-picker
        Then the place is removed from place picker

    @Critical
    Scenario: Remove several places in open placepicker
        Given user is on search form
        And several places are already in placepicker

        When user clicks inside placePicker field
        And user hover cursor over desired place
        And unclick check box

        Then place is removed from placePicker field
        And place picker stays open with nearby places

    @Medium
    Scenario: Switch departure and destination places
        Given user is on search form
        And a departure and a destination are already selected

        When user clicks on switch departure and destination button

        Then departure and destination switch places

    @Critical
    Scenario: Add nearby places to departure via tip
        Given user is on search form
        And default departure is selected
        When user clicks on "Add" nearby locations tip
        Then nearby locations are added to departure field

    @Critical
    Scenario: Change default departure place via tip
        Given user is on search form

        When user changes departure place
        And user clicks on tip to set new default departure

        Then Default departure place is updated
