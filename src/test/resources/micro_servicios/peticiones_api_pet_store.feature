Feature: Peticiones mascotas

  Background:
    * url urlApi
    * json estructura = read('estructura.json')
    * path 'pet'

#  @ignore
  Scenario Outline: Insercion de mascota y posterior consulta
    Given request estructura
    When method POST
    Then status 200
    And print response
    And match response.name == 'doggie'
    * path 'pet/',response.id
    And method GET
    Then status 200
    And print response
    Examples:
      | mainId | categoryId | categoryName | name   | photosUrls | tagId | tagName | status    |
      | 0      | 0          | string       | doggie | string     | 0     | string  | available |

#  @ignore
  Scenario Outline: Actualizacion
    Given request estructura
    When method PUT
    Then status 200
    And print response
    * path 'pet/findByStatus'
    * param status = '<status>'
    And method GET
    Then status 200
    And print response
    Examples:
      | mainId              | categoryId | categoryName | name | photosUrls | tagId | tagName | status |
      | 9223372016900012000 | 0          | string       | sold | string     | 0     | string  | sold   |