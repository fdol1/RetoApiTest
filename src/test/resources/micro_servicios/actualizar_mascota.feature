Feature: Peticiones mascotas

  Background:
    * url urlApi
    * json estructura = read('estructura.json')
    * path 'pet'


#  @ignore
  Scenario Outline: Actualizacion de mascota y consulta por estado
    Given request estructura
    When method PUT
    Then status 200
    And print response
    Examples:
      | mainId              | categoryId | categoryName | name | photosUrls | tagId | tagName | status |
      | 9223372016900012000 | 0          | string       | sold | string     | 0     | string  | sold   |