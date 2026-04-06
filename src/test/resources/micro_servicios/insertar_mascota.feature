Feature: Insertar mascota

  Background:
    * url urlApi
    * json estructura = read('estructura.json')
    * path 'pet'

#  @ignore
  Scenario Outline: POST Insertar mascota
    Given request estructura
    When method POST
    Then status 200
    And print response
    And match response.name == '<name>'
    * assert karate.get('response.id') != null
    Examples:
      | mainId | categoryId | categoryName | name   | photosUrls | tagId | tagName | status    |
      | 0      | 0          | string       | doggie | string     | 0     | string  | available |