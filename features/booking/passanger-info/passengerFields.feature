Feature: Passenger fields

    @Medium
    Scenario: Stroller info for infant passenger
        Given user has selected a default flight
        And user is on Passenger info page

        When user adds infant passenger

        Then the stroller info is visible for an infant passenger


    @Medium
    Scenario: Mandatory middle name when customer is from Russia
        Given user has selected a flight within Russia
        And user proceeds to the booking page

        When user selects nationality Russia

        Then user must enter middle name
