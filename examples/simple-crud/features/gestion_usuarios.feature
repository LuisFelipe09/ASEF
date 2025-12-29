Feature: Gestión de Usuarios
  Como administrador del sistema
  Quiero poder crear y consultar usuarios
  Para gestionar el acceso a la plataforma

  Scenario: Crear un usuario exitosamente
    Given la base de datos está vacía
    When envío una petición POST a "/users/" con:
      | nombre | email             |
      | Juan   | juan@example.com  |
    Then el código de respuesta debe ser 201
    And la respuesta debe contener el id del usuario
    And el email del usuario debe ser "juan@example.com"

  Scenario: Evitar duplicados de email
    Given existe un usuario con email "maria@example.com"
    When envío una petición POST a "/users/" con:
      | nombre | email             |
      | Maria  | maria@example.com |
    Then el código de respuesta debe ser 400
    And el mensaje de error debe indicar "Email ya registrado"
