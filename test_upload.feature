Feature: Validar funcionalidad de carga y procesamiento de archivos Excel

  Scenario: Subir un archivo Excel válido
    Given la aplicación está en ejecución
    When subo un archivo Excel válido
    Then el archivo se procesa correctamente
    And el botón de descarga está habilitado

  Scenario: Intentar acceder a una ruta inexistente
    Given la aplicación está en ejecución
    When intento acceder a una ruta no válida
    Then recibo un mensaje de error 404

  Scenario: Validar generación de gráfico
    Given la aplicación está en ejecución
    When subo un archivo Excel válido
    Then se genera un gráfico correctamente

  Scenario: Validar estructura de tabla de resultados
    Given la aplicación está en ejecución
    When subo un archivo Excel válido
    Then la tabla de resultados contiene datos organizados
    And las columnas principales están presentes

  Scenario: Verificar exportación de archivo
    Given la aplicación está en ejecución
    When subo un archivo Excel válido
    Then se genera un archivo de exportación
    And el archivo tiene el nombre correcto con la fecha actual

  Scenario: Validar datos inválidos en la tabla (Prueba que falla)
    Given la aplicación está en ejecución
    When subo un archivo Excel válido
    Then la tabla contiene datos inválidos
