Feature: Film Arama Testleri

  Background:
    * def BaseURL = 'http://www.omdbapi.com/'

  Scenario: The Batman (2022) ara
    Given url BaseURL
    And params { apikey: 'a937da3c', s: 'The Batman' }
    When method GET
    Then status 200
    And match response.Search[0].Title == 'The Batman'
    And match response.Search[0].Year == '2022'
    * def imdbId = response.Search[0].imdbID
    * print 'IMDB ID:', imdbId
    * def result = { imdbId: imdbId }
    * karate.set('result', result)