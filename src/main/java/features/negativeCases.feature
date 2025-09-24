Feature: OMDB API - Film Detayları

  Background:
    * def BaseURL = 'http://www.omdbapi.com/'

  Scenario: Olmayan film araması
    Given url BaseURL
    And params { apikey: 'a937da3c', s: 'RastgeleBirFilm' }
    When method GET
    Then status 200
    And match response.Response == 'False'
    * print 'Error Message:', response.Error

  Scenario: Boş arama parametresi
    Given url BaseURL
    And params { apikey: 'a937da3c', s: '' }
    When method GET
    Then status 200
    And match response.Response == 'False'
    * print 'Error Message:', response.Error
