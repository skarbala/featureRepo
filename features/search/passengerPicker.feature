Feature: Passenger picker

    @Medium
    Scenario: Currency picker button
        Given user is on the destination screen.
        When a user clicks to currency picker.
        Then currency picker will be opened with a focus in the text field.

    @Medium @smoke @automated-ios
    Scenario: Currency picker whisperer
        Given user is on currency picker screen on onboarding
        When user type some currency.
        Then whisperer will display typed currency which can be selected
