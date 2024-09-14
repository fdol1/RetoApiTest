Feature: Peticiones mascotas

  Background:
    * url urlApi
    * json estructura = read('estructura.json')
    * path 'pet'

#  @ignore
  Scenario Outline: PUT Actualizar de mascota
    Given request estructura
    When method PUT
    Then status 200
    And print response
    And match response.name == '<name>'
    * assert karate.get('response.id') != null
    Examples:
      | mainId              | categoryId | categoryName | name | photosUrls | tagId | tagName | status |
      | 9223372016900012000 | 0          | string       | sold | string     | 0     | string  | sold   |