
## Playbook: Explotación de Aplicaciones Públicas

### Investigar

Las aplicaciones públicas pueden ser objeto de explotación por parte de adversarios que buscan comprometer la integridad, confidencialidad o disponibilidad de los datos. Las fases en las que podría ocurrir esto incluyen:

- Identificación de vulnerabilidades en la aplicación.
- Explotación de vulnerabilidades para obtener acceso no autorizado.
- Manipulación de datos sensibles o críticos.
- Inyección de código malicioso.
- Robo de credenciales de usuarios.
- Intercepción de comunicaciones sensibles.
- Exfiltración de datos.

El desafío principal radica en la detección y mitigación oportuna.

### Identificación/detección
- Detectar cambios inusuales en la aplciación, ya sea en su manera de funcionar, su consumo de recursos o su apariencia.
- Los cambios en la base de datos como un aumentom repentino del numero de consultas o la provenencia de las mismas pueden ser un indicador, además de la modificación de datos inusual.
- Busquar correos electrónicos de phishing.
Los correos electrónicos de phishing son el método más común de robo de credenciales.
- Busquar correos electrónicos con enlaces a sitios de recolección de credenciales.
- Busquar en el historial web del usuario para determinar si se visitó algún sitio potencialmente malicioso.
- Busquar malware potencial en la estación de trabajo del usuario.
    - Recolectores de credenciales como Mimikatz.
    - Software de grabación de pulsaciones de teclas.
    - Malware de raspado del portapapeles.

### Remediar

* **Planificar eventos de remediación:** Coordinar acciones de remediación con equipos relevantes para minimizar el impacto y restaurar la integridad de las aplicaciones comprometidas.
* **Evaluar el riesgo:** Priorizar acciones de remediación según el nivel de riesgo y el impacto en la seguridad de las aplicaciones.
* **Si la aplicación web está alojada en otro servicio:** (GoDaddy, HostGator, Ionos, empresa de alojamiento local, etc.), comuníquese con el servicio de alojamiento para informar el problema.
     - Pregunte sobre cualquier problema de seguridad reciente en su entorno.
    - Pregunte sobre los posibles registros que puedan poseer.
    - Obtenga estos registros y consérvelos lo antes posible.
* **Determinar el método inicial de compromiso:** Esto se limitará a aquellos con acceso administrativo o de gestión de aplicaciones web.
Realizar entrevistas a los usuarios impactados y realizar una serie de preguntas que podrían ser:
    - ¿Recibiste un correo electrónico sospechoso?
    - ¿Ingresó sus credenciales de correo electrónico después  de hacer clic en un enlace o en un sitio web que parecía no aceptarlas?
    - ¿Has descargado algún software nuevo?
    - ¿Ha recibido algún documento por correo electrónico que no esperaba?
    - ¿No ha notado acciones anormales en su estación de trabajo?

#### Mitigar
Entre algunas opciones para mitigar el daño que puede provocar este acceso inicial a nuestros sistemas tenemos:

- El aislamiento de la aplicación limitará a qué otros procesos y características del sistema puede acceder el objetivo explotado.

- Los firewalls de aplicaciones web se pueden utilizar para limitar la exposición de las aplicaciones y evitar que el tráfico de explotación llegue a la aplicación.

- Segmentar los servidores y servicios externos del resto de la red con una DMZ o en una infraestructura de alojamiento independiente.

- Usar el privilegio mínimo para las cuentas de servicio limitará los permisos que obtiene el proceso explotado en el resto del sistema.

- Escanear periódicamente los sistemas externos en busca de vulnerabilidades y establezca procedimientos para parchear rápidamente los sistemas cuando se descubran vulnerabilidades críticas mediante el escaneo y la divulgación pública.

#### Contener

* **Identificar y aislar sistemas comprometidos:** Identificar las aplicaciones afectadas y aislarlas de la red para evitar la propagación del compromiso.
* **Implementar controles de acceso:** Reforzar los controles de acceso para prevenir futuros accesos no autorizados a las aplicaciones.
* **En caso de compromiso de cuentas administrativas:** Cambiar todas las contraseás del resto de cuentas de administración de la aplicación web, empezando obviamente por la cuenta comprometida. Además es conveniente habilitar autenticación multifactor, deshabilitar metodos de autenticación alternativos como podrían ser certficados. Deshabiltiar los tekens de autentciaciónd e todas las cuentas.
Si se identifica una organización externa durante la investigación, notifique a la organización sobre cualquier compromiso o inquietud.

* **En caso de encontrar malware:** Conserve una muestra del malware.
Analizar el malware con cualquier herramienta disponible.
Recopilar el hash del archivo utilizando el cmdlet “Get-Filehash” de PowerShell.
Enviar hash a fuentes de la comunidad VirusTotal, Hybrid-Analysis, etc.
Si las fuentes de la comunidad han visto el hash, tenga en cuenta las características del malware.


#### Erradicar

* **Desplegar actualizaciones de seguridad:** Aplicar parches y actualizaciones de seguridad para corregir las vulnerabilidades explotadas en las aplicaciones comprometidas.
* **Realizar análisis de código:** Revisar el código de las aplicaciones en busca de posibles puertas traseras o vulnerabilidades adicionales.
* **Eliminar malware y artefactos:** Realizar escaneos exhaustivos para identificar y eliminar cualquier malware o código malicioso presente en las aplicaciones comprometidas.
* **Buscar cambios en la aplciación:** Es conveniente realziar una comprarción del código fuente de la aplicación para saber si el atacante ha conseguido inyectar su propio código malicioso.

#### Referencia: Recursos de Remediación
[OWASP Top 10](https://owasp.org/www-project-top-ten/)
[CERT Guide to Malware Incident Prevention and Handling](https://www.us-cert.gov/ncas/tips/ST04-005)

### Comunicar

1. **Notificar a las partes interesadas:** Comunicar de manera proactiva el compromiso a las partes interesadas internas y externas, proporcionando información relevante sobre el impacto y las acciones tomadas.
2. **Coordinar con proveedores:** Establecer una comunicación transparente con los proveedores de servicios afectados para colaborar en la respuesta al compromiso y mitigar su impacto.
3. **Comunicar a los clientes:** Informar a los usuarios afectados sobre el incidente de seguridad y proporcionar orientación sobre las medidas que deben tomar para proteger sus datos.
4. **Contactar con aseguradoras:** Consultar con la aseguradora para informar sobre el incidente y evaluar el alcance de la cobertura de seguro disponible.
5. **Contactar con fuerzas estatales:** Establecer comunicación con las autoridades competentes según sea necesario, siguiendo los protocolos legales y regulatorios aplicables.
6. **Contactar con empresas externas:** Informar a organizaciones externas relevantes, como agencias de seguridad cibernética y organismos de respuesta a incidentes, para compartir información y colaborar en la respuesta al incidente.

### Recuperar

1. **Restaurar la funcionalidad:** Implementar medidas para restaurar las aplicaciones afectadas a un estado operativo normal, asegurando la integridad y disponibilidad de los datos.
2. **Reemplazar la aplicación:** Restaurar la aplicación con una copia segura del estado del código anterior al incidente.
3.**Restaurar lso sitemas:** Restaurar los sistemas afectados a partir de una copia de seguridad limpia, realizada antes de la infección, si estas copias de seguridad están disponibles.
4. **Realizar análisis post-incidente:** Evaluar el impacto del compromiso en las aplicaciones y mejorar los controles de seguridad para prevenir futuras explotaciones.
5. **Preparar un mensaje explicativo:** Elaborar un comunicado público detallando el incidente, las acciones tomadas y las medidas de seguridad adicionales implementadas para mitigar futuros riesgos.
6. **Crear un informe detallado:** Documentar el incidente, incluyendo el cronograma de eventos, las acciones de respuesta tomadas y las lecciones aprendidas, para mejorar la preparación y respuesta ante futuros incidentes.

#### Información adicional

1. <a name="https://owasp.org/www-project-application-security-verification-standard/"></a>["OWASP Application Security Verification Standard"](#TODO-url)

2. <a name="https://frsecure.com/web-application-attack-response-playbook/"></a>["Web Application Attack Response Playbook"](#TODO-url)

2. <a name="https://attack.mitre.org/techniques/T1190/"></a>["Exploit Public-Facing Application ID: T1190"](#TODO-url) (Apr 14, 2023)
