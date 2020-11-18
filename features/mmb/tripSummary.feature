Feature: Trip summary

    @Medium
    Scenario: Display one class for each connecting flight
        Given customer has active booking of a connected flight in the selected class

        When user opens booking in MMB

        Then selected class is shown for each flight in the Trip summary

    @Medium
    Scenario: Display mixed classes for each connecting flight
        Given user has active booking of a connected flight containing flights with different classes

        When user opens booking in MMB

        Then correct class is shown for each flight in the Trip summary

    @Medium
    Scenario: Open E-Ticket PDF

        Given the user is on booking list page in manage my booking
        And user is signed in
        And user has some upcoming trips

        When user opens trip on booking list page
        And user clicks on Open E-ticket button in others

        Then  E-Ticket PDF is displayed

