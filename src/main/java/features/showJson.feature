Feature: Get Request movie

  Background:
    * def BaseURL = 'http://www.omdbapi.com/'

  Scenario: The Batman (2022) ara
    Given url BaseURL
    And params { apikey: 'a937da3c', s: 'The Batman' }
    When method GET
    Then status 200
    And print response
