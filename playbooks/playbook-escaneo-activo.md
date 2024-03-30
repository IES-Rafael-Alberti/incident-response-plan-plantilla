
## Playbook: Escaneo activo

### Investigar

Los adversarios pueden ejecutar exploraciones de reconocimiento activas para recopilar información que pueda utilizarse durante la selección de objetivos. Los escaneos activos son aquellos en los que el adversario investiga la infraestructura de la víctima a través del tráfico de red, a diferencia de otras formas de reconocimiento que no implican interacción directa.

Para realizar estos tipos de reconocimientos se hacen uso de ciertos protocolos como puede ser el ICMP. La información que consiguen se puede traducir en objetivos potencialesy oportunidades para los atacantes.

Para la detección de este tipo de ataque se ha de monitorear y analizar patrones de tráfico e inspección de paquetes asociados a protocolos que no siguen los estándares de protocolo y flujos de tráfico esperados (por ejemplo, paquetes extraños que no pertenecen a flujos establecidos, patrones de tráfico anómalos o gratuitos, sintaxis o estructura anómala). Considere la correlación con el monitoreo de procesos y la línea de comando para detectar la ejecución de procesos anómalos y los argumentos de la línea de comando asociados a los patrones de tráfico (por ejemplo, monitorear anomalías en el uso de archivos que normalmente no inician conexiones para los protocolos respectivos).

También se ha de supervisar los datos de la red para detectar flujos de datos poco comunes. Los procesos que utilizan la red y que normalmente no tienen comunicación de red o que nunca antes se han visto son sospechosos.

Podemos encontrar tres sub-técnicas que son:

* **Escaneo de bloques de IP:**
Los atacantes pueden escanear los bloques de IP de las víctimas para recopilar información que pueda utilizarse durante la focalización. Las direcciones IP públicas se pueden asignar a organizaciones por bloque o por un rango de direcciones secuenciales.

* **Escaneo de vulnerabildiades:**
Un atacante puede escanear a las víctimas en busca de vulnerabilidades que puedan utilizarse durante la orientación. Los análisis de vulnerabilidades suelen comprobar si la configuración de un host/aplicación de destino (por ejemplo, software y versión) se alinea potencialmente con el objetivo de un exploit específico que el adversario pueda intentar utilizar.

* **Escaneo con diccionarios:**
Un atancate podría sondear iterativamente la infraestructura utilizando técnicas de rastreo y fuerza bruta. Si bien esta técnica emplea métodos similares a la Fuerza Bruta, su objetivo es la identificación de contenido e infraestructura en lugar del descubrimiento de credenciales válidas. Las listas de palabras utilizadas en estos escaneos pueden contener nombres genéricos de uso común y extensiones de archivo o términos específicos de un software en particular.

### Remediar

#### Preparación

Entre algunas técinas para protejernos para estos ataques tenemos:

- Realizar inspecciones rutinarias.

- Asegurar que sistemas como el IDS/IPS, SIEM o firewall se encuentran actualizados.

- Revisar las reglas del firewall y del IDS/IPS rutinalmente basadas en las necesidades del entorno.

- Restringir acceso via protocolos RDP o SSH y similares donde no sean necesarios.

- Quitar banners de protocolos de conexión.

- Quitar los encabezados por defecto de apliciones web.

- Confirmar que los logs de los diferentes servidores y puestos de trabajo se envian a un lugar centralizado.


#### Contener

Entro los diferentes pasos para contener este tipo de ataque tenemos:

- Realizar un inventariado enumerando los diferentes activos sujetos al escaner.

- Archivar artefactos relacionados con es escaneo como puden ser direcciones IP, las peticiones o el propio user agent.

- Realizar un análisis exhaustivo para identificar los puntos de entrada utilizados por el atacante durante el escaneo activo.

- Creación de un refuerzo perimetral para diferentes actores de este tipo de amenaza conocidos.

- Realizar capturas de tráfico en los puntos clave para posterior análisis.


#### Erradicar

- Inmediatamente realizar escaneres antivirus en los endpints objetivo.

- Cambiar las posibles contraseñas comprometidas.

- Inscpeccionar tanto la actividad de usuario como los dispositivos en busca de actividad IOC coincidente con el perfil del ataque.

- Proceder al bloqueo del origen del ataque como puden ser los diferentes protocolos usados, user agents o una IP.



### Comunicar

Después de un incidente de escaneo activo, la comunicación efectiva es esencial para informar a las partes pertinentes y manejar la situación de manera adecuada. A continuación, se detallan los pasos para comunicar el incidente:

- Equipo de Respuesta a Incidentes (IR Team):

Notificar de inmediato al Equipo de Respuesta a Incidentes (IR Team) interno sobre el incidente de escaneo activo.
Establecer un canal de comunicación directo y seguro para el IR Team para facilitar la coordinación y la toma de decisiones.

- Responsables Internos:

Informar a los responsables internos relevantes, como el equipo de seguridad de la información, el equipo de TI y la alta dirección, sobre el incidente.
Proporcionar detalles precisos sobre la naturaleza del escaneo activo y su impacto potencial en el entorno organizacional.

- Autoridades Regulatorias y de Cumplimiento:

Según las regulaciones y políticas aplicables, notificar a las autoridades regulatorias pertinentes sobre el incidente de escaneo activo.
Cooperar plenamente con las autoridades regulatorias y proporcionar la información requerida de manera oportuna y precisa.

- Proveedores de Servicios y Socios Comerciales:

Comunicar el incidente a los proveedores de servicios y socios comerciales que puedan verse afectados por el escaneo activo.
Coordinar con los proveedores de servicios y socios comerciales para mitigar cualquier impacto potencial en sus sistemas y datos.

- Clientes y Usuarios Finales:

Si es necesario, informar a los clientes y usuarios finales sobre el incidente de escaneo activo y cualquier acción recomendada que deban tomar.
Proporcionar orientación clara y precisa para ayudar a los clientes y usuarios finales a proteger sus datos y sistemas.

- Comunicación Externa:

Preparar un comunicado de prensa o declaración pública para proporcionar transparencia sobre el incidente de escaneo activo, especialmente si puede afectar la confianza del público en la organización.
Designar un portavoz oficial para manejar las consultas de los medios y garantizar un mensaje consistente y preciso.

### Recuperar

- Validar si los IOC contactados en los puntos finales detectados no se ven en otros dispositivos, ya que esto puede indicar que se pueden realizar más escaneos de red.

- Considerar implementar y desplegar tecnologías de engaño (como un honeypot) para alejar a los ciberdelincuentes de los verdaderos activos de su organización. Estos señuelos imitan servidores, aplicaciones y datos legítimos para engañar al delincuente haciéndole creer que se ha infiltrado y obtenido acceso a los activos más importantes de su organización cuando en realidad no es así.

- Verificar que los dispositivos víctmas del escaner no han sufrido ningún ataque.

#### Información adicional

1. <a name="https://docs.lumu.io/portal/en/kb/articles/network-scan-response-playbook"></a>["Network Scan Incident Response Playbook"](#TODO-url), Lomu (Apr 08, 2023)

2. <a name="https://www.guardsight.com/gspbc-1030-reconnaissance-active-scanning/"></a>["GSPBC-1030: Reconnaissance – Active Scanning"](#TODO-url),  Rylan Wallace ( Oct 21, 2021)
