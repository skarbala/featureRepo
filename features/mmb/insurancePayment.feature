@payment
Feature: Insurance payment
    Handling of insurance payments on MMB.

    @smoke
    Scenario: Payment for additional insurance
        Given user has confirmed booking
        When user opens booking detail in MMB
        And user pays for additional insurance with EUR currency
        Then payment is accepted

    Scenario: Unsucessfull payment for insurance
        Given user has confirmed booking
        When user opens booking detail in MMB
        And user enters invalid card data
        And user tries to pay for insurance
        Then payment is not accepted
        And warning message is shown