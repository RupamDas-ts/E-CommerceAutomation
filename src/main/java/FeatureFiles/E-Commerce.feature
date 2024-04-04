Feature: Create an MMT account and perform basic functionalities via Automation

  Scenario Outline: User creates a new MMT Account
    Given Setup User Details for new Account creation
    Then Create WedDriver with given <capabilities>
    Then Open MMT Log in page
    And Create new Account
    Then Book Flight From <origin> to <Destination> for given <date> of next month
    Examples:
      | capabilities                                                  | origin | Destination | date |
      | browserName=chrome,platform=win10,version=latest,network=true | CCU    | DEL         | 20   |