Feature: Baggage

    Scenario: Add baggage
        Given user is on search page
        When user adds one baggage
        Then baggage is added to the search criteria

    Scenario: Remove baggage
        Given user is on search page
        And user has added baggage
        When user removes baggage
        Then baggage is removed from the search criteria