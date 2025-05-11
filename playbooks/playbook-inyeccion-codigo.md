# Playbook: Inyección de Código

**¡Investigar, remediar (contener, erradicar) y comunicarse en paralelo!**

Asignar pasos a individuos o equipos para que trabajen simultáneamente, siempre que sea posible; este manual de estrategias no es puramente secuencial. Use su mejor criterio.

## Investigar

1. Identificar la alerta o evento sospechoso relacionado con un posible intento de inyección:

   * Revisar las alertas de IDS/IPS o WAF que detecten patrones típicos de inyección (caracteres especiales, secuencias SQL, comandos inusuales).
   * Consultar logs de servidores web, bases de datos y aplicaciones para buscar evidencia de entradas maliciosas.
   * Tener en cuenta reportes de usuarios sobre comportamientos extraños en la aplicación.

2. Confirmar el incidente como un ataque de inyección de código:

   * Determinar el tipo de inyección (por ejemplo, SQL, OS Command Injection, XSS, etc.).
   * Identificar el punto de entrada exacto (formulario, parámetro en URL, cabecera HTTP, etc.).
   * Establecer la vulnerabilidad explotada (por ejemplo, falta de validación de entrada o ausencia de consultas parametrizadas).
   * Evaluar el impacto: ¿qué sistemas o datos fueron comprometidos?

3. Recopilar evidencia forense:

   * Captura de logs, volcados de memoria, snapshots del sistema afectado.
   * Extraer el código malicioso para su análisis.
   * Registrar IPs, agentes de usuario y otros metadatos útiles para la atribución.

## Remediar

### Contención

1. Aislar los sistemas afectados:

   * Desconectar o restringir el acceso a los sistemas comprometidos.
   * Aplicar reglas de firewall para bloquear IPs maliciosas o patrones específicos.
   * Desactivar temporalmente las funcionalidades vulnerables.

2. Notificar al equipo de respuesta a incidentes y partes interesadas:

   * Registrar el incidente en el sistema de gestión de incidentes.
   * Informar a desarrollo, operaciones y seguridad.

### Erradicación

1. Eliminar cualquier código malicioso:

   * Limpiar scripts, archivos o comandos inyectados en el servidor, base de datos o aplicación.

2. Corregir la vulnerabilidad:

   * Implementar validaciones estrictas de entrada.
   * Usar consultas parametrizadas o procedimientos almacenados en bases de datos.
   * Actualizar configuraciones seguras y aplicar parches al sistema o aplicación.

3. Restaurar desde copias de seguridad limpias si fuera necesario:

   * Validar las copias de seguridad para asegurarse de que no están comprometidas.

## Recuperar

1. Verificar la integridad del sistema y la aplicación:

   * Asegurar que no quede código malicioso ni puertas traseras.

2. Implementar una monitorización reforzada:

   * Observar tráfico y logs durante un período de tiempo prudencial tras la restauración.

3. Volver a poner el sistema en producción:

   * Hacerlo de forma controlada y con validaciones de seguridad previas.

4. Realizar pruebas de funcionalidad y seguridad:

   * Confirmar que la aplicación funciona como se espera y sin la vulnerabilidad original.

## Comunicar

1. Escalar el incidente y comunicarse con la gerencia.
2. Documentar el incidente conforme a procedimientos internos.
3. Consultar con asesores legales sobre implicancias legales o regulatorias (por ejemplo, si hubo exposición de datos).
4. Comunicar el estado y las acciones a usuarios internos.
5. Notificar a usuarios o clientes si sus datos se vieron comprometidos.
6. Informar a la aseguradora, si aplica.
7. Considerar la notificación a las autoridades competentes (policía, CSIRT nacional, etc.).
8. Comunicar el incidente a proveedores de servicios TI o seguridad si están involucrados en la cadena.

## Prevención de Riesgos

1. Fortalecer el ciclo de desarrollo seguro:

   * Realizar formaciones de codificación segura al equipo de desarrollo.
   * Incluir validación de entrada desde el diseño de la aplicación.

2. Mantener sistemas actualizados:

   * Aplicar parches de seguridad de forma periódica.

3. Usar herramientas de análisis de código:

   * Estático (SAST) y dinámico (DAST) para detectar inyecciones.

4. Implementar WAFs y sistemas de detección de intrusiones:

   * Configurados para bloquear o alertar sobre patrones de inyección.

5. Realizar auditorías de seguridad regulares:

   * Incluyendo pruebas de penetración y revisiones de arquitectura.

## Información adicional

* [OWASP SQL Injection Prevention Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html)
* [Acunetix – SQL Injection Overview](https://www.acunetix.com/websitesecurity/sql-injection/)
* [OWASP Secure Coding Practices](https://owasp.org/www-project-secure-coding-practices-quick-reference-guide/)
