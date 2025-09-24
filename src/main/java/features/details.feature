Feature: OMDB API - Film Detayları

  Background:
    * def BaseURL = 'http://www.omdbapi.com/'

  Scenario: The Batman (2022) detaylarını al
    #burada Batman filmini dinamik bir şekilde alamadım çünkü karate versiyonum desteklemiyor.
    * def searchResult = call read('search.feature')
    * def imdbId = searchResult.imdbId
    Given url BaseURL
    And param apikey = 'a937da3c'
    And param i = imdbId
    When method GET
    Then status 200
    And match response.Title == 'The Batman'
    And match response.Year == '2022'
    * def rottenRating = response.Ratings[1].Value
    * print 'The Batman Rotten Tomatoes Rating:', rottenRating




