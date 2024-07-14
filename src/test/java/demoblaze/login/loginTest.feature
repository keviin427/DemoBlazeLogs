Feature: Test login demoblaze

  Background:
    * url urlBase
    * def bodyDemoBlaze = read ('bodyDemoBlaze.json')
    * def getStringRandom =
    """
      function randomString() {
        let r = (Math.random() + 1).toString(36).substring(7);
        console.log("random", r);
        return r;
      }
    """
  Scenario: Create new user
    Given path 'signup'
    And set bodyDemoBlaze.username = getStringRandom()
    And set bodyDemoBlaze.password = getStringRandom()
    And request bodyDemoBlaze
    When method post
    Then status 200

  Scenario: User already exist
    Given path 'signup'
    And set bodyDemoBlaze.username = "Kevin Ormaza"
    And set bodyDemoBlaze.password = "1234"
    And request bodyDemoBlaze
    When method post
    Then status 200
    And match response == { "errorMessage": "This user already exist." }

  Scenario: Login up
    Given path 'login'
    And set bodyDemoBlaze.username = "Kevin Ormaza"
    And set bodyDemoBlaze.password = "1234"
    And request bodyDemoBlaze
    When method post
    Then status 200
    And karate.match(response, '/^[A-Za-z0-9-_]+\.[A-Za-z0-9-_]+\.[A-Za-z0-9-_]+$/')

  Scenario: Login up fail
    Given path 'login'
    And set bodyDemoBlaze.username = "Kevin Ormaza"
    And set bodyDemoBlaze.password = "12345"
    And request bodyDemoBlaze
    When method post
    Then status 200
    And match response == { "errorMessage": "Wrong password." }

