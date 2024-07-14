# Demoblaze Project

## Prerequisitos:
- Maquina local con el sistema operativo Windows 11
- IDE IntelliJ version 2023.1
- Maven version 3.8.6 (debe estar en la variable de entorno)
- JDK versión 1.8 (debe estar en la variable de entorno)

## Comandos de instalación:
1. Clona el repositorio:
   ```bash
   git clone https://github.com/keviin427/DemoBlazeLogs.git
   
2. Comandos
   ```bash
   mvn install -DskipTests (descarga todas las dependencias del POM)

## Instrucciones para ejecutar los test:
1. Ejecutar desde la terminal de comandos
   ```bash
   mnv test

2. También puedes ejecutar las pruebas desde IntelliJ:

   - Abre el proyecto en IntelliJ.
   - Navega al archivo ExamplesTest.java.
   - Haz clic derecho y selecciona "Run 'ExamplesTest'".

## Información Adicional:
   - Los resultados de las pruebas se generan en formato HTML en la carpeta target/surefire-reports.
   - Al final de la terminal en la ejecución se encuentra el link del reporte.
