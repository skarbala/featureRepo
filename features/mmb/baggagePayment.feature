Feature: Baggage payment
    Handling of baggage payments on MMB.

    @smoke
    Scenario: Payment for additional baggage
        Given user has confirmed booking
        When user opens booking detail in MMB
        And user pays for additional baggage with EUR currency
        Then payment is accepted

    Scenario: Unsucessfull payment for baggage
        Given user has confirmed booking
        When user opens booking detail in MMB
        And user enters invalid card data
        And user tries to pay for baggage
        Then payment is not accepted
        And warning message is shown