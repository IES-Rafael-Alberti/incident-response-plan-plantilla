## Playbook: Ransomware

**¡Investigar, remediar (contener, erradicar) y comunicarse en paralelo! La contención es fundamental en incidentes de ransomware; priorice según corresponda.**

Asigne pasos a personas o equipos para que trabajen simultáneamente, siempre que sea posible.

### Investigar

`Objetivo: Ampliar los pasos de investigación, incluyendo preguntas y estrategias clave, para ransomware.`

1. **Determinar el tipo** de ransomware es decir, ¿cuál es la familia, variante o tipo?

    1. Buscar mensajes relacionados. Comprobar:

        * Interfaces gráficas de usuario (GUI) para el malware
        * Archivos de texto o HTML, que a veces se abren automáticamente tras el cifrado
        * Archivos de imagen, que suelen usarse como fondo de pantalla en sistemas infectados
        * Correos de contacto con extensiones de archivo cifradas
        * Ventanas emergentes tras intentar abrir un archivo cifrado
        * Mensajes de voz

    1. Analizar los mensajes en busca de pistas sobre el tipo de ransomware:

        * Nombre del ransomware
        * Idioma, estructura, frases, diseño gráfico
        * Correo de contacto
        * Formato del ID de usuario
        * Detalles de la solicitud de rescate (p. ej., moneda digital, tarjetas de regalo)
        * Dirección de pago en caso de moneda digital
        * Chat o página de soporte

    1. Analizar los archivos afectados o nuevos. Comprobar:

        * Esquema de renombramiento de archivos cifrados, incluyendo la extensión (p. ej., `.crypt`, `.cry`, `.locked`) y el nombre base
        * Corrupción de archivos vs. cifrado
        * Tipos y ubicaciones de archivos afectados
        * Usuario/grupo propietario de los archivos afectados
        * Icono de archivos cifrados
        * Marcadores de archivos
        * Existencia de listados de archivos, archivos de claves u otros archivos de datos

    1. Analizar el software o los tipos de sistemas afectados. Algunas variantes de ransomware solo afectan a ciertas herramientas (p. ej., bases de datos) o plataformas (p. ej., productos NAS).

    1. Sube los indicadores a servicios de categorización automatizados como Crypto Sheriff, ID Ransomware o similares.

1. **Determinar el alcance:**

    1. ¿Qué sistemas están afectados? `Objetivo: Especificar herramientas y procedimiento`

        * Analizar en busca de indicadores concretos de compromiso (IOC), como archivos/hashes, procesos, conexiones de red, etc. Utilizar protección de endpoints/EDR, telemetría de endpoints, registros del sistema, etc.
        * Comprobar sistemas similares en busca de infecciones (p. ej., usuarios, grupos, datos, herramientas, departamento, configuración, estado de parches similares): comprobar herramientas de IAM, herramientas de gestión de permisos, servicios de directorio, etc.
        * Buscar el comando y control externo (C2), si lo hay, y encontrar otros sistemas conectados a él: comprobar firewall o IDS. Registros, registros del sistema/EDR, registros DNS, registros de flujo de red o enrutador, _etc._

    1. ¿Qué datos se ven afectados? (_p. ej._, tipos de archivo, departamento o grupo, software afectado) `Objetivo: Especificar herramienta(s) y procedimiento`

        * Detectar cambios anómalos en los metadatos de los archivos, como cambios masivos en las fechas de creación o modificación. Consultar las herramientas de búsqueda de metadatos de archivos.
        * Detectar cambios en archivos de datos normalmente estables o críticos. Consultar las herramientas de monitoreo de integridad de archivos.

1. **Evaluar el impacto** para priorizar y motivar a los recursos.
    1. Evaluar el impacto funcional: impacto en el negocio o la misión. ¿Cuánto dinero se pierde o está en riesgo?

        * ¿Cuántas misiones (y cuáles) se ven afectadas o en riesgo?

    1. Evaluar el impacto de la información: impacto en la confidencialidad, integridad y disponibilidad de los datos.

        * ¿Qué tan críticos son los datos para el negocio/misión?

        * ¿Qué tan sensibles son los datos? (p. ej., secretos comerciales)

        * ¿Cuál es el estado regulatorio de los datos (p. ej., información personal identificable, información médica protegida)?

1. **Identificar el vector de infección.** Revisar las tácticas capturadas en la [táctica de acceso inicial](https://attack.mitre.org/tactics/TA0001/) de MITRE ATT&CK. Los detalles y fuentes de datos comunes incluyen:

    * Adjunto de correo electrónico: revisar registros de correo electrónico, dispositivos y servicios de seguridad de correo electrónico, herramientas de descubrimiento electrónico, etc.

    * Protocolo de escritorio remoto (RDP) inseguro: revisar resultados del análisis de vulnerabilidades, configuraciones de firewall, etc.
    * Autopropagación (gusano o virus) (verificar telemetría del host/EDR, registros del sistema, análisis forense)
    * Infección a través de unidades extraíbles (gusano o virus)
    * Distribuido por otro malware o herramienta de ataque: ampliar la investigación para incluir herramientas de ataque o malware adicionales

### Remediar

* **Planificar eventos de remediación** donde estos pasos se implementen conjuntamente (o de forma coordinada), con los equipos adecuados listos para responder ante cualquier interrupción.
* **Considerar el tiempo y las compensaciones** de las acciones de remediación: su respuesta tiene consecuencias.

#### Contener

`Objetivo: Personalizar los pasos de contención, tácticos y estratégicos, para el ransomware.`

`Objetivo: Especificar las herramientas y los procedimientos para cada paso, a continuación.`

**En situaciones de ransomware, la contención es fundamental. Basar las medidas de contención en datos de la investigación. Priorizar las cuarentenas y otras medidas de contención más que durante una respuesta típica.**

Las cuarentenas (lógicas, físicas o ambas) previenen la propagación desde los sistemas infectados y a sistemas y datos críticos. Las cuarentenas deben ser integrales: incluir acceso a la nube/SaaS, inicio de sesión único, acceso a sistemas como ERP u otras herramientas empresariales, etc.

* Poner en cuarentena los sistemas infectados
* Poner en cuarentena a los usuarios y grupos afectados
* Poner en cuarentena los recursos compartidos de archivos (no solo los recursos compartidos infectados; proteger también los recursos compartidos no infectados)
* Poner en cuarentena las bases de datos compartidas (no solo los servidores infectados; proteger también las bases de datos no infectadas)
* Poner en cuarentena las copias de seguridad, si aún no están protegidas
* Bloquear los dominios y direcciones de comando y control
* Eliminar los correos electrónicos de vector de las bandejas de entrada
* Confirmar que la protección de endpoints (AV, NGAV, EDR, etc.) esté actualizada y habilitada en todos los sistemas. * Confirmar que los parches se hayan implementado en todos los sistemas (priorizando los sistemas, sistemas operativos, software, etc.) afectados.
* Implementar firmas personalizadas en las herramientas de protección de endpoints y seguridad de red según los IOC detectados.

`Objetivo: Considerar la automatización de las medidas de contención mediante herramientas de orquestación.`

#### Erradicar

`Objetivo: Personalizar los pasos de erradicación, tanto tácticos como estratégicos, para el ransomware.`

`Objetivo: Especificar las herramientas y los procedimientos para cada paso, a continuación.`

* Reconstruir los sistemas infectados a partir de medios seguros.
* Restaurar a partir de copias de seguridad seguras.
* Confirmar que la protección de endpoints (AV, NGAV, EDR, etc.) esté actualizada y habilitada en todos los sistemas.
* Confirmar que los parches se hayan implementado en todos los sistemas (priorizando los sistemas, sistemas operativos, software, etc.) afectados.

* Implementar firmas personalizadas en las herramientas de protección de endpoints y seguridad de red según los IOC detectados.
* **Precaución ante reinfecciones:** Considere priorizar las alarmas/alertas relacionadas con este incidente.

#### Referencia: Recursos de Remediación

`Objetivo: Especificar los recursos financieros, de personal y logísticos para lograr la remediación.`

### Comunicar

`Objetivo: Personalizar los pasos de comunicación para ransomware.`

`Objetivo: Especificar las herramientas y los procedimientos (incluyendo quiénes deben participar) para cada paso, a continuación, o consultar el plan general.`

1. Escalar el incidente y comunicarse con la gerencia según el procedimiento.
1. Documentar el incidente según el procedimiento.
1. Comunicar con los asesores legales internos y externos según el procedimiento, incluyendo discusiones sobre cumplimiento, exposición al riesgo, responsabilidad, contacto con las fuerzas del orden, etc.
1. Comunicar con los usuarios (internos).
1. Comunicar las actualizaciones de respuesta a incidentes según el procedimiento.
1. Comunicar el impacto del incidente y las acciones de respuesta a incidentes (p. ej., contención: "¿por qué está inactivo el recurso compartido de archivos?"), que pueden ser más intrusivas o disruptivas durante incidentes de ransomware.
1. Comunicar los requisitos: "¿qué deben hacer y qué no deben hacer los usuarios?". Consulte "Referencia: Acciones del usuario ante sospecha de ransomware" a continuación.
1. Comunicarse con los clientes.
1. Centrarse especialmente en aquellos cuyos datos se vieron afectados.
1. Generar las notificaciones necesarias según la normativa aplicable (en particular, aquellas que puedan considerar el ransomware como una filtración de datos o que requieran notificaciones, por ejemplo, [HHS/HIPAA](https://www.hhs.gov/sites/default/files/RansomwareFactSheet.pdf)). `Objetivo: Ampliar los requisitos y procedimientos de notificación según la normativa aplicable`.
1. Contactar con la(s) aseguradora(s).
1. Analizar qué recursos pueden poner a disposición, qué herramientas y proveedores respaldan y por los que pagarán, etc.
1. Cumplir con los requisitos de informes y reclamaciones para proteger la elegibilidad.
1. Comunicarse con los reguladores, incluyendo una conversación sobre los recursos que pueden poner a disposición (no solo notificaciones estándar: muchos pueden ayudar activamente).
1. Considerar la posibilidad de notificar e involucrar a las autoridades.
    1. Fuerzas del orden público locales
    1. Fuerzas del orden público estatales o regionales
    1. Fuerzas del orden público federales o nacionales
1. Comunicarse con los proveedores de seguridad y TI
    1. Notificar y colaborar con los proveedores gestionados según el procedimiento
    1. Notificar y colaborar
    1. Notificar y colaborar con consultores de respuesta a incidentes según el procedimiento

### Recuperar

`Objetivo: Personalizar los pasos de recuperación para ransomware.`

`Objetivo: Especificar las herramientas y los procedimientos para cada paso, a continuación.`

> **No recomendamos pagar el rescate:** no garantiza una solución al problema. Puede salir mal (por ejemplo, los errores podrían hacer que los datos sean irrecuperables incluso con la clave). Además, pagar demuestra que el ransomware funciona y podría aumentar los ataques contra usted u otros grupos.

1. Implementar planes de continuidad del negocio/recuperación ante desastres: por ejemplo, considerar la migración a ubicaciones operativas alternativas, sitios de conmutación por error o sistemas de respaldo. 1. Recuperar datos de copias de seguridad limpias a sistemas limpios, parcheados y monitoreados (después de la erradicación), de acuerdo con nuestra estrategia de copias de seguridad probada.

* Revisar las copias de seguridad para detectar indicadores de vulnerabilidad.
* Considerar la recuperación parcial y las pruebas de integridad de las copias de seguridad.

1. Buscar y probar descifradores conocidos para las variantes detectadas utilizando recursos como la [página de herramientas de descifrado](https://www.nomoreransom.org/en/decryption-tools.html) del proyecto No More Ransom!.

1. 1. Considere pagar el rescate por activos/datos críticos irrecuperables, de acuerdo con la política «POR HACER: Ampliar y socializar esta matriz de decisiones».

* Considere las consecuencias con las partes interesadas pertinentes.

* Comprenda las implicaciones financieras y presupuestarias.

* Comprenda las implicaciones legales, regulatorias y de seguros.

* Comprenda los mecanismos (p. ej., tecnologías, plataformas, proveedores intermediarios/intermediarios).

### Recursos

#### Referencia: Acciones del usuario ante sospecha de ransomware

«POR HACER: Personalice los pasos para los usuarios que se enfrentan a sospechas de ransomware».

1. Mantenga la calma y respire hondo. 1. Desconecte su sistema de la red. `Objetivo: incluya pasos detallados con capturas de pantalla, una herramienta o script preinstalado para facilitarlo ("desconexión en caso de emergencia"), considere interruptores de corte de red de hardware`
1. Tome fotos de la pantalla con su teléfono inteligente que muestren lo que notó: mensajes de rescate, archivos cifrados, mensajes de error del sistema, etc.
1. Tome notas sobre el/los problema(s) usando la aplicación de notas de voz de su teléfono inteligente o con lápiz y papel. ¡Cada detalle cuenta! Documente lo siguiente:
    1. ¿Qué notó?
    1. ¿Por qué pensó que era un problema?
    1. ¿Qué estaba haciendo cuando lo detectó?
    1. ¿Cuándo ocurrió por primera vez y con qué frecuencia desde entonces?
    1. ¿Dónde estaba cuando ocurrió y en qué red? (oficina/casa/tienda, cableada/inalámbrica, con/sin VPN, etc.)
    1. ¿Qué sistemas está usando? (sistema operativo, nombre de host, etc.)
    1. ¿Qué cuenta estaba usando?
    1. ¿A qué datos accede habitualmente?
    1. ¿Con quién más se ha puesto en contacto sobre este incidente y qué les informó?
    1. Contacte con el servicio de asistencia y sea lo más servicial posible.
    1. Tenga paciencia: la respuesta puede ser disruptiva, ¡pero está protegiendo a su equipo y a la organización! **Gracias.**

#### Referencia: Acciones del servicio de asistencia ante sospecha de ransomware

`Objetivo: Personalizar los pasos para el personal del servicio de asistencia que se ocupa de sospechas de ransomware`

1. Mantenga la calma y respire hondo.
1. Abra un ticket para documentar el incidente, según el procedimiento `Objetivo: Personalizar la plantilla con preguntas clave (ver más abajo) y el flujo de trabajo de seguimiento`.
1. Pida al usuario que tome fotos de la pantalla con su smartphone que muestren lo que observó: mensajes de rescate, archivos cifrados, mensajes de error del sistema, etc. Si esto es algo que usted observó directamente, haga lo mismo.
1. Tome notas sobre el/los problema(s) usando la aplicación de notas de voz de su teléfono inteligente o con lápiz y papel. Si se trata de un informe de usuario, formule preguntas detalladas, incluyendo:

    1. ¿Qué observó?
    1. ¿Por qué creyó que era un problema?
    1. ¿Qué estaba haciendo cuando lo detectó?
    1. ¿Cuándo ocurrió por primera vez y con qué frecuencia desde entonces?
    1. ¿Qué redes están involucradas? (oficina/casa/tienda, cableada/inalámbrica, con/sin VPN, etc.)
    1. ¿Qué sistemas están involucrados? (sistema operativo, nombre de host, etc.)
    1. ¿Qué datos están involucrados? (rutas, tipos de archivo, recursos compartidos de archivos, bases de datos, software, etc.)
    1. ¿Qué usuarios y cuentas están involucrados? (directorio activo, SaaS, SSO, cuentas de servicio, etc.)
    1. ¿A qué datos suelen acceder los usuarios involucrados?
    1. ¿Con quién más se ha puesto en contacto para informarle sobre este incidente y qué les informó? 1. Haga preguntas de seguimiento según sea necesario.
1. Obtenga la información de contacto detallada del usuario (casa, oficina, móvil), si corresponde.
1. Registre toda la información en el ticket, incluyendo notas escritas a mano y de voz.
1. Ponga en cuarentena a los usuarios y sistemas afectados. `Objetivo: Personalizar los pasos de contención y automatizar todo lo posible`.
1. Contacte al equipo de seguridady prepárese para participar en la respuesta según las instrucciones: investigación, remediación, comunicación y recuperación.

#### Información adicional

1. <a name="ransomware-playbook-ref-1"></a>["Ransomware Identification for the Judicious Analyst"](https://www.gdatasoftware.com/blog/2019/06/31666-ransomware-identification-for-the-judicious-analyst), Hahn (12 Jun 2019)
1. <a name="ransomware-playbook-ref-2"></a>[No More Ransom!](https://www.nomoreransom.org) Project, including their [Crypto Sheriff](https://www.nomoreransom.org/crypto-sheriff.php?lang=en) service and their [Q&A](https://www.nomoreransom.org/en/ransomware-qa.html)
1. <a name="ransomware-playbook-ref-3"></a>[ID Ransomware](https://id-ransomware.malwarehunterteam.com/) service
1. <a name="ransomware-playbook-ref-4"></a>[MITRE ATT&CK Matrix](https://attack.mitre.org), including the [Initial Access](https://attack.mitre.org/tactics/TA0001/) and [Impact](https://attack.mitre.org/tactics/TA0040/) tactics
