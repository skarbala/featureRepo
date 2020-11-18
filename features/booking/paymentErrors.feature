Feature: Payment errors

    @Medium @automated-web
    Scenario: Display unified payment error
        Given User is on payment step (Summary step or CVV modal)
        When The payment is not successful
        Then User see unified payment error informing user why the payment was not successful
