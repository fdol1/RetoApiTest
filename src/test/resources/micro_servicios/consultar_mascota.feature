Feature: Peticiones mascotas

  Background:
    * url urlApi
    * path 'pet/'

#  @ignore
  Scenario: Consultar mascota con id de registro
    * def result = call read('insertar_mascota.feature')
    * path result.response.id
    When method GET
    Then status 200
    And print response

#  @ignore
  Scenario: Consultar mascota con estado
    * def result = call read('actualizar_mascota.feature')
    * path 'findByStatus'
    * param status = result.response.status
    And method GET
    Then status 200
    And print response