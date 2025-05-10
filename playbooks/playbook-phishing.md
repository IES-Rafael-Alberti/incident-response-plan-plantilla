## Playbook: Phishing

**¡Investigar, remediar (contener, erradicar) y comunicarse en paralelo!**

Asignar pasos a personas o equipos para que trabajen simultáneamente, siempre que sea posible; esta guía no es puramente secuencial. Use su criterio.

### Investigar

1. **Determinar el alcance del ataque** Normalmente, se le notificará que un posible ataque de phishing está en curso, ya sea por parte de un usuario, cliente o socio.
    * Determinar el **número total de usuarios afectados**
    * Comprender las **acciones de los usuarios** en respuesta al correo electrónico de phishing (p. ej., ¿descargaron el archivo adjunto, visitaron el sitio web falsificado o proporcionaron información personal o comercial, como credenciales)?
    * Identificar la actividad potencialmente relacionada. Revisar:
        * Redes sociales
        * Correos electrónicos posiblemente sospechosos
        * Correos electrónicos con enlaces a URL externas y desconocidas
        * Correos electrónicos no retornables o no entregables
        * Cualquier tipo de notificación de actividad sospechosa
1. **Analizar el mensaje** usando un dispositivo seguro (es decir, no abrir mensajes en un dispositivo con acceso a datos o credenciales confidenciales, ya que el mensaje podría contener malware), determinar:
    * Quién recibió el mensaje
    * Quién fue el destinatario del mensaje (puede ser diferente a los destinatarios "correctos")
    * Dirección de correo electrónico del remitente
    * Asunto
    * Cuerpo del mensaje
    * Archivos adjuntos
    * Enlaces, dominios y nombres de host
    * Metadatos del correo electrónico, incluyendo los encabezados de los mensajes
        * Información del remitente del campo "De" y del encabezado de usuario autenticado con X
        * Todas las direcciones IP de clientes y servidores de correo
    * Anotar las peculiaridades o características sospechosas

1. **Analizar enlaces y archivos adjuntos**
    * Utilizar recopilación pasiva como nslookup y whois para encontrar direcciones IP e información de registro.
    * Encontrar dominios relacionados mediante OSINT (p. ej., [whois inverso](https://www.whoxy.com/reverse-whois/)) en direcciones de correo electrónico y otros datos de registro.
    * Enviar enlaces, archivos adjuntos o hashes a [VirusTotal](https://www.virustotal.com/gui/).
    * Enviar enlaces, archivos adjuntos o hashes a un entorno de pruebas de malware como [Cuckoo](https://cuckoosandbox.org/), [Hybrid Analysis](https://www.hybrid-analysis.com/), [Joe Sandbox](https://www.joesecurity.org/) o [VMray](https://www.vmray.com/).

1. Categorice el tipo de ataque.

    * Phishing de correo electrónico: Los atacantes envían correos electrónicos fraudulentos que parecen provenir de empresas legítimas, con el objetivo de engañar a las víctimas para que revelen información confidencial o descarguen archivos maliciosos.

    * Smishing: El smishing es un tipo de phishing que se realiza a través de mensajes de texto en dispositivos móviles.

    * Vishing: El vishing es una técnica de phishing en la que los atacantes hacen llamadas telefónicas para engañar a las víctimas y obtener información confidencial.

    * Pharming: Los atacantes utilizan técnicas de DNS (Domain Name System) falsificados para redirigir a los usuarios a sitios web falsos, donde los datos de los usuarios son robados.

    * Spear Phishing: Este tipo de phishing es más sofisticado y específico. Los atacantes personalizan el correo electrónico para parecer que proviene de una fuente de confianza, como un colega o una empresa, para obtener información personal o confidencial.

    * Clone Phishing: Este tipo de ataque implica la creación de una réplica de un correo electrónico legítimo, pero con contenido malicioso o un enlace fraudulento.

    * Whaling: Los ataques de "whaling" o "caza de ballenas" se enfocan en atacar a individuos de alto perfil, como ejecutivos o funcionarios gubernamentales, con el fin de obtener información delicada o realizar un ataque a la organización.

1. **Determinar la gravedad.** Considere:
    * si la seguridad pública o personal está en riesgo
    * si los datos personales (u otros datos sensibles) están en riesgo
    * cualquier evidencia de quién está detrás del ataque
    * número de activos afectados
    * impacto comercial preliminar
    * si los servicios están afectados
    * si puede controlar/registrar sistemas críticos

### Remediar

* **Planificar eventos de remediación** donde estos pasos se implementen juntos (o de forma coordinada), con los equipos adecuados listos para responder ante cualquier interrupción.
* **Considerar el tiempo y las compensaciones** de las acciones de remediación: su respuesta tiene consecuencias.

#### Contener

* Contener las cuentas afectadas
  * Cambiar las credenciales de inicio de sesión
  * Reducir el acceso a servicios, sistemas o datos críticos hasta que se complete la investigación
  * Reforzar la autenticación multifactor (MFA)
* Bloquear la actividad según los indicadores de compromiso detectados, por ejemplo:
  * Bloquear dominios maliciosos mediante DNS, firewalls o proxies
  * Bloquear mensajes con remitentes, cuerpos de mensaje, asuntos, enlaces, archivos adjuntos, etc. similares, mediante la puerta de enlace o el servicio de correo electrónico.
* Implementar la retención forense o conservar copias forenses de los mensajes
* Purgar los mensajes relacionados de las bandejas de entrada de otros usuarios o hacerlos inaccesibles
* Contener un compromiso más amplio de acuerdo con el plan general de IR
* Considerar medidas de contención de dispositivos móviles, como el borrado de datos mediante la administración de dispositivos móviles (MDM). Sopesar el impacto investigativo/forense. * Aumentar el nivel de alerta de detección con una monitorización mejorada, especialmente de cuentas, dominios o direcciones IP relacionadas.
* Considerar asistencia de seguridad externa para apoyar la investigación y la remediación.
* Confirmar las actualizaciones de software y antimalware pertinentes en los activos.

### Comunicación

1. Escalar el incidente y comunicarse con la gerencia según el procedimiento.
1. Documentar el incidente según el procedimiento (y [reportar](https://us-cert.cisa.gov/report-phishing)).
1. Comunicarse con los asesores legales internos y externos según el procedimiento, incluyendo discusiones sobre cumplimiento, exposición al riesgo, responsabilidad, contacto con las fuerzas del orden, etc.
1. Comunicarse con los usuarios (internos).
1. Comunicar las actualizaciones de respuesta a incidentes según el procedimiento.
1. Comunicar el impacto del incidente y las acciones de respuesta a incidentes (p. ej., contención: "¿por qué está inactivo el recurso compartido de archivos?").
1. Comunicar los requisitos: "¿qué deben hacer y qué no deben hacer los usuarios?". 1. Comunicarse con los clientes
1. Centrarse especialmente en aquellos cuyos datos se vieron afectados
1. Generar las notificaciones necesarias según la normativa aplicable (en particular, aquellas que puedan considerar el phishing como una filtración de datos o que requieran notificaciones).
1. Contactar con la(s) aseguradora(s)
1. Analizar qué recursos pueden poner a disposición, qué herramientas y proveedores respaldan y por los que pagarán, etc.
1. Cumplir con los requisitos de informes y reclamaciones para proteger la elegibilidad
1. Considerar la posibilidad de notificar e involucrar a las fuerzas del orden público (<https://www.usa.gov/stop-scams-frauds>). TODO: Vincular los siguientes puntos con los recursos reales de su organización
1. Fuerzas del orden público locales
1. Fuerzas del orden público estatales o regionales
1. Ley federal o nacional Cumplimiento
1. Comunicarse con los proveedores de seguridad y TI. TODO: Vincular los siguientes puntos con los recursos reales de su organización.
1. Notificar y colaborar con proveedores gestionadossegún el procedimiento.
1. Notificar y colaborar con consultores de respuesta a incidentes según el procedimiento.

### Recuperar

1. Implementar planes de continuidad del negocio/recuperación ante desastres si la vulneración implicó interrupciones del servicio: por ejemplo, considerar la migración a ubicaciones operativas alternativas, sitios de conmutación por error o sistemas de respaldo.
1. Reforzar los programas de capacitación sobre presuntos ataques de phishing. Los principales indicadores sospechosos pueden incluir:

* Errores ortográficos en el mensaje o el asunto
* Nombres de remitentes aparentemente falsos, incluyendo discrepancias entre el nombre para mostrar y la dirección de correo electrónico
* Direcciones de correo electrónico personales para asuntos oficiales (por ejemplo, correos de Gmail o Yahoo de compañeros de trabajo)
* Líneas de asunto marcadas como "EXTERNO" en correos electrónicos que parecen internos
* [Enlaces maliciosos o sospechosos](https://www.pcworld.com/article/248963/how-to-tell-if-a-link-is-safe-without-clicking-on-it.html)
* Recibir un correo electrónico o archivo adjunto que no esperaban, pero que proviene de alguien conocido (contactar al remitente antes de abrirlo)
* Informar de actividades sospechosas al departamento de TI o seguridad

1. Asegúrese de que el personal de TI y seguridad esté al día con las técnicas de phishing más recientes.
1. Determine si algún control ha fallado al ser víctima de un ataque y corríjalo. Aquí tienes una [buena fuente](https://www.proofpoint.com/us/security-awareness/post/14-things-do-after-phishing-attack) que puedes considerar tras un ataque de phishing.

### Recursos

#### Referencia: Acciones del usuario ante un presunto ataque de phishing

1. Mantén la calma y respira hondo.
1. Toma fotos de la pantalla de tu smartphone mostrando lo que observaste: el mensaje de phishing, el enlace si lo abriste, la información del remitente.
1. Toma notas sobre el/los problema(s) con la aplicación de notas de voz de tu smartphone o con papel. ¡Todo ayuda! Documenta lo siguiente:
    1. ¿Qué observaste?
    1. ¿Por qué pensaste que era un problema?
    1. ¿Qué estabas haciendo cuando lo detectaste?
    1. ¿Cuándo ocurrió por primera vez y con qué frecuencia desde entonces? ¿Dónde se encontraba cuando ocurrió y en qué red? (oficina/casa/tienda, cableada/inalámbrica, con/sin VPN, etc.)
    1. ¿Qué sistemas utiliza? (sistema operativo, nombre de host, etc.)
    1. ¿Qué cuenta utilizaba?
    1. ¿A qué datos suele acceder?
    1. ¿Con quién más se ha puesto en contacto sobre este incidente y qué les informó?
1. Contacte con el servicio de asistencia mediante la línea directa de phishingo la barra de herramientas de informes de phishing y sea lo más servicial posible.
1. Tenga paciencia: la respuesta puede ser disruptiva, pero está protegiendo a su equipo y a la organización. 

#### Referencia: Acciones del Help Desk ante un presunto ataque de phishing

1. Mantenga la calma y respire hondo.
1. Abra un ticket para documentar el incidente, según el procedimiento.
1. Pida al usuario que tome fotos de su pantalla con su smartphone mostrando lo que notó: el mensaje de phishing, el enlace si lo abrió, la información del remitente, etc. Si esto es algo que usted notó directamente, haga lo mismo.
1. Tome notas sobre el/los problema(s) usando la aplicación de notas de voz de su smartphone o con papel. Si se trata de un informe de usuario, formule preguntas detalladas, incluyendo:
    1. ¿Qué notó?
    1. ¿Por qué pensó que era un problema?
    1. ¿Qué estaba haciendo cuando lo detectó?
    1. ¿Cuándo ocurrió por primera vez y con qué frecuencia desde entonces? 1. ¿Qué redes están involucradas? (oficina/casa/tienda, cableada/inalámbrica, con/sin VPN, etc.)
    1. ¿Qué sistemas están involucrados? (sistema operativo, nombre de host, etc.)
    1. ¿Qué datos están involucrados? (rutas de acceso, tipos de archivos, recursos compartidos, bases de datos, software, etc.)
    1. ¿Qué usuarios y cuentas están involucrados? (directorio activo, SaaS, SSO, cuentas de servicio, etc.)
    1. ¿A qué datos suelen acceder los usuarios involucrados?
    1. ¿Con quién más se ha puesto en contacto sobre este incidente y qué les informó?
1. Haga preguntas de seguimiento si es necesario.
1. Obtenga información de contacto detallada del usuario (casa, oficina, móvil), si corresponde.
1. Registre toda la información en el ticket, incluyendo notas escritas a mano y de voz.
1. Ponga en cuarentena a los usuarios y sistemas afectados. TODO: Personalizar los pasos de contención y automatizar al máximo
1. Contactar al equipo de seguridad y estar preparado para participar en la respuesta según las instrucciones: investigación, remediación, comunicación y recuperación.

#### Additional Information

1. <a name="phishing-playbook-ref-1"></a>[Anti-Phishing Attack resources](https://resources.infosecinstitute.com/category/enterprise/phishing/phishing-countermeasures/top-16-anti-phishing-resources/#gref)
1. <a name="phisphing-playbook-ref-2"></a>[Methods of Identifying a Phishing attack](https://www.securitymetrics.com/blog/7-ways-recognize-phishing-email)
1. <a name="phishing-playbook-ref-3"></a>[Phishing Email Examples](https://www.phishing.org/phishing-examples)
1. <a name="phishing-playbook-ref-4"></a>[Anti-Phishing best practices](https://resources.infosecinstitute.com/category/enterprise/phishing/phishing-countermeasures/anti-phishing-best-practices/#gref)
