Feature: Currency picker
    As a user, I would like to change currency so I can see how much money I will pay with my own currency.
    @Medium
    Scenario: Currency picker button
        Given user is on the destination screen.
        When a user clicks to currency picker.
        Then currency picker will be opened with a focus in the text field.

    @Medium @smoke
    Scenario: Currency picker whisperer
        Given user is on currency picker screen on onboarding
        When user type some currency.
        Then whisperer will display typed currency which can be selected