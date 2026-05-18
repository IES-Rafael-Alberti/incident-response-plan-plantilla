
## Playbook: Phishing

**Investigar, remediar (contener, erradicar) y comunicar en paralelo.**

Asigne pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es meramente secuencial. Utilice su mejor criterio.

### Investigar

`OBJETIVO: Ampliar los pasos de investigación (preguntas, artefactos y estrategias) para phishing, incluyendo compromiso de cuenta y campañas internas.`

**Contexto de la organización (para priorización)**

Esta empresa asesora a autónomos y pymes; maneja datos personales de clientes/proveedores, información de gestión y procesos en aplicaciones (CRM/ERP), con infraestructura en 2 sedes (150 empleados) y servicios mixtos (servidores internos y nube), además de web/tienda alojadas externamente y uso habitual de redes sociales.

Implicaciones típicas en phishing:
* **BEC/fraude de facturas** dirigido a Facturación, Compras, Ventas y Dirección.
* **Robo de credenciales** para correo, nube/almacenamiento, CRM/ERP y accesos remotos.
* **Compromiso de RRSS** (suplantación y estafa a clientes).
* **Captura de datos** por formularios de la web/tienda (phishing “inbound”) o suplantación de marca.

> **Regla de oro:** preserve evidencia primero. Evite reenviar el correo “tal cual” (puede propagar enlaces/adjuntos); si es necesario compartirlo, hágalo como adjunto (.eml/.msg) o mediante herramientas de seguridad.

1. **Triage rápido (primeros 15–30 min)**
    * Confirmar si es (a) phishing “solo” (sin interacción), (b) phishing con interacción (clic/credenciales/descarga), o (c) compromiso de cuenta/buzón (phishing desde cuenta interna).
    * Preservar evidencia mínima:
        * Captura de pantalla del correo.
        * Mensaje original en formato `.eml`/`.msg` (incluye cabeceras completas) y el `Message-ID` si está disponible.[<sup>[4]</sup>](#phishing-playbook-ref-4)
    * Abrir/actualizar ticket y asignar un responsable de investigación + un responsable de contención.
    * Determinar si hay **riesgo financiero inmediato** (cambio de cuenta bancaria, pago urgente, compra de tarjetas regalo, etc.). Si existe, notificar y coordinar de inmediato con **Facturación/Compras** para congelar/validar pagos por canal alternativo.
    * Si hay riesgo alto (credenciales entregadas, pago iniciado, malware ejecutado, o cuenta interna comprometida), elevar inmediatamente a IR e iniciar contención (no espere al análisis completo).[<sup>[1]</sup>](#phishing-playbook-ref-1)

1. **Ámbito del ataque** Normalmente se le notificará que se está produciendo un posible ataque de phishing, ya sea por parte de un usuario, cliente o socio.
    * Determinar el **número total de usuarios afectados**.
    * Comprender **las acciones de los usuarios** ante el correo (_p. ej._, ¿descargaron el adjunto?, ¿visitaron el sitio suplantado?, ¿introdujeron credenciales?, ¿aprobaron una solicitud MFA?, ¿autorizaron una app OAuth?, ¿realizaron una transferencia/pago?).[<sup>[5]</sup>](#phishing-playbook-ref-5)
    * Identificar **áreas especialmente sensibles** por el negocio:
        * Facturación/Compras/Ventas (pagos, cuentas bancarias, órdenes de transferencia, datos de proveedores)
        * RRHH (nóminas, datos personales)
        * Legal/Dirección (documentación sensible)
        * TIC/Seguridad (accesos y credenciales)
    * Encontrar la actividad potencialmente relacionada. Comprueba:
        * Redes Sociales
        * Cualquier otro correo electrónico sospechoso.
        * Correos electrónicos con enlaces a URLs externas y desconocidas.
        * Correos electrónicos de no-retorno o no-entregables.
        * Cualquier tipo de notificación de actividad sospechosa.
1. **Recopilar artefactos del mensaje (sin ejecutarlo)** Analice el mensaje utilizando un dispositivo/entorno seguro (es decir, **no** abrir adjuntos ni seguir enlaces en equipos con credenciales o acceso a datos sensibles).
    * Recopilar y registrar:
        * Quién recibió el mensaje (incluyendo listas de distribución) y en qué buzón/canal llegó.
        * Quién era el objetivo real (puede diferir de los destinatarios).
        * Remitente visible (`From`) y remitente real/envelope (`Return-Path`), `Reply-To` y `To/Cc`.
        * Asunto, cuerpo, idioma, urgencia, narrativa y solicitud.
        * Adjuntos (nombre, tipo, tamaño) (**no** abrir adjuntos fuera de procedimientos).
        * Enlaces: URLs, dominios y hosts (**no** seguir enlaces; extraerlos de forma segura).
        * Cabeceras completas y cadena `Received` (IPs/hosts), `Message-ID`, resultados SPF/DKIM/DMARC.[<sup>[6]</sup>](#phishing-playbook-ref-6)
        * “Peculiaridades” (typos, dominios parecidos, display name suplantado, “invoice/HR”, QR, etc.).
    * Herramientas típicas (ejemplos): analizador de cabeceras de su suite de correo, SIEM, y analizadores externos de cabeceras (solo pegando texto).[<sup>[7]</sup>](#phishing-playbook-ref-7)

1. **Analizar cabeceras y autenticación del correo**
    * Verificar:
        * ¿Falló SPF/DKIM/DMARC? ¿Hay alineación? ¿Hay indicios de spoofing del dominio legítimo?[<sup>[8]</sup>](#phishing-playbook-ref-8)
        * ¿El `Reply-To` apunta a otro dominio? ¿Hay `From` con nombre legítimo pero dominio no legítimo?
        * ¿La cadena `Received` tiene saltos sospechosos o infraestructura “throwaway”?
        * ¿Hay `Authentication-Results` inesperados o inconsistentes?

1. **Analizar URLs, dominios y hosting (de forma pasiva)**
    * Normalizar y extraer indicadores:
        * Resolver redirecciones de forma segura (no en navegador normal) y capturar URL final.
        * Detectar homógrafos/punycode, subdominios engañosos y typosquatting.[<sup>[9]</sup>](#phishing-playbook-ref-9)
    * Enriquecer dominios/URLs:
        * WHOIS/RDAP, ASN, hosting, certificado TLS, reputación y “first seen”.
        * Búsqueda de dominios relacionados (OSINT) a partir de registros.[<sup>[10]</sup>](#phishing-playbook-ref-10)
    * Envíos típicos a servicios de análisis:
        * URLs/archivos/hashes a [VirusTotal](https://www.virustotal.com/gui/).
        * URLs a [urlscan.io](https://urlscan.io/) (si su política lo permite).
        * Sandboxes para adjuntos/URLs, según procedimiento (p. ej. Cuckoo, Hybrid Analysis, Joe Sandbox, VMray).

1. **Analizar adjuntos (si aplica) y posible malware**
    * Extraer hash (SHA-256), tipo real (MIME/magic) y metadatos sin ejecutar.
    * Revisar si el adjunto es una técnica común: HTML smuggling, documentos con macros, ISO/IMG, LNK, OneNote, etc.[<sup>[11]</sup>](#phishing-playbook-ref-11)
    * Si hay ejecución/descarga: coordinar con endpoint/EDR para aislar host, recopilar artefactos (proceso padre/hijo, persistencia, conexiones), y preservar para forense.

1. **Buscar señales de compromiso de cuenta (si hubo interacción o indicios)**
    * Si el usuario introdujo credenciales, aprobó MFA, o autorizó una aplicación:
        * Revisar logs de autenticación del IdP/SSO: inicios de sesión anómalos, “impossible travel”, nuevos dispositivos, saltos de IP/ASN, fallos repetidos, cambios de MFA.[<sup>[12]</sup>](#phishing-playbook-ref-12)
        * Revisar si hay “fatigue”/bombardeo de MFA y patrones de aprobación inusuales.[<sup>[13]</sup>](#phishing-playbook-ref-13)
        * Revisar creación de reglas de buzón, reenvíos, delegaciones, bandejas ocultas, cambios de firma, y envíos salientes sospechosos (típico en BEC/compromiso de buzón).
        * Revisar consentimientos OAuth/apps “recientemente autorizadas” (phishing de consentimiento) y permisos concedidos.[<sup>[14]</sup>](#phishing-playbook-ref-14)
        * Revisar accesos y actividad anómala en **CRM/ERP** y en **almacenamiento en la nube/servidor de ficheros** (descargas masivas, borrados, comparticiones externas, creación de usuarios/roles).

1. **Buscar propagación / campaña interna**
    * Buscar correos similares en el entorno (por asunto, remitente, dominio, URL, hash, texto del cuerpo) para dimensionar la campaña.
    * Si el phishing sale de una cuenta interna: tratar como **compromiso de cuenta/buzón** y ampliar alcance a destinatarios internos y externos.

1. **Categorizar el tipo de ataque** (para elegir contención/erradicación)
    * **Robo de credenciales** (página de login falsa), **phishing de consentimiento OAuth**, **malware delivery**, **BEC/fraude de facturas**, **QR phishing**, **smishing/vishing**, **callback phishing** (número de teléfono en el correo).[<sup>[5]</sup>](#phishing-playbook-ref-5)
    * `OBJETIVO: Crear playbooks adicionales para BEC y para compromiso de buzón si son incidentes frecuentes.`

1. **Determinar la gravedad** Considere:
    * Si la seguridad pública o personal está en riesgo
    * Si los datos personales (u otros datos sensibles) están en riesgo
    * Si hay indicios de **compromiso de cuenta** o **ejecución de malware**
    * Número de activos afectados
    * El impacto preliminar en el negocio
    * Si los servicios se ven afectados
    * Si se pueden controlar/registrar los sistemas críticos

    * **Alta** (ejemplos): credenciales entregadas, MFA aprobada, OAuth consentido, correo enviado desde cuenta interna, pago iniciado, malware ejecutado.
    * **Media**: clic sin credenciales y sin descarga, pero con exposición de datos (p. ej., tracking, recolección de información), o campaña amplia.
    * **Baja**: reportes aislados sin interacción y con bloqueo sencillo.

### Remediar

* **Planificar eventos de remediación** en los que estos pasos se pongan en marcha juntos (o de forma coordinada), con los equipos adecuados listos para responder a cualquier interrupción.
* **Considere el momento y las compensaciones** de las acciones de remediación: su respuesta tiene consecuencias.

#### Contener
`OBJETIVO: Especificar herramientas y procedimientos internos para cada paso (suite de correo, EDR, SIEM, DNS/proxy, IAM/SSO, MDM).`

* **Contener cuentas potencialmente afectadas** (prioridad si hubo interacción):
    * Restablecer credenciales y **revocar sesiones/tokens** (no solo “cambiar password”).
    * Revisar/forzar MFA (idealmente MFA resistente a phishing, cuando sea posible).[<sup>[13]</sup>](#phishing-playbook-ref-13)
    * Reducir temporalmente el acceso a sistemas/datos críticos hasta concluir investigación.
    * Si hay sospecha de compromiso de buzón: deshabilitar reenvíos externos, revisar reglas y permisos.
    * Si el impacto puede alcanzar **CRM/ERP** o repositorios compartidos (nube/servidor de archivos), limitar temporalmente comparticiones externas y revisar accesos privilegiados.

* **Bloquear por indicadores (IOCs)** descubiertos:
    * Bloquear dominios/URLs/IPs mediante DNS, firewall, proxy y/o SWG.
    * Bloquear mensajes por remitente/dominio, asunto, URLs y hashes/adjuntos en el gateway/servicio de correo.
    * Añadir reglas temporales de detección en SIEM/EDR/IDS para alertar ante accesos a IOCs.

* **Retención forense y preservación**
    * Conservar copias forenses de mensajes (incluyendo cabeceras) y resultados de análisis.
    * Conservar evidencias de autenticación (logs), auditoría del buzón y actividad de endpoints.

* **Eliminar/purgar mensajes relacionados**
    * Retirar el correo de bandejas de entrada (o ponerlo en cuarentena) para reducir más interacción.

* **Contener endpoints y móviles si aplica**
    * Aislar endpoint(s) donde se haya abierto/ejecutado adjunto.
    * Considerar acciones MDM (bloqueo/borrado) en móviles, equilibrando impacto forense.

* **Asistencia externa y coordinación**
    * Considerar apoyo externo (IR, forense, fraude/BEC) si hay compromiso o pérdida financiera.
    * Si el phishing afecta a la **web/tienda** (suplantación de marca, formularios abusados, o contenido comprometido), coordinar con el proveedor de hosting externo y revisar integridad y logs disponibles.

* **Higiene técnica**
    * Confirmar actualizaciones de antimalware/EDR y parches relevantes.

#### Erradicar

`OBJETIVO: Personalizar pasos de erradicación para su entorno (correo/IAM/endpoint).`

* Eliminar reglas maliciosas del buzón, reenvíos, delegaciones no autorizadas y “apps” OAuth no aprobadas.
* Rotar secretos/tokens y claves que pudieran haberse expuesto (incluye API tokens, tokens de sesión, claves de apps).
* Revisar y endurecer políticas de acceso (p. ej., acceso condicional) si el vector fue credenciales.
* Eliminar malware/persistencia del endpoint (reimagen si procede), y confirmar que no hay reinfección.

#### Referencia: Recursos de Reparación

`TODO: Especifique los recursos financieros, de personal y logísticos para llevar a cabo la reparación.`

### Comunicar

`OBJETIVO: Personalizar los pasos de comunicación para phishing (quién comunica, mensajes y canales).`

`OBJETIVO: Especificar herramientas y procedimientos (incluyendo quién participa) o remitir al plan general.`

1. Elevar el incidente y comunicarlo a la dirección según el procedimiento
1. Documente el incidente según el procedimiento (y, si aplica, informe a autoridades/cert/seguro).[<sup>[1]</sup>](#phishing-playbook-ref-1)
1. Comunicarse con los asesores jurídicos internos y externos según el procedimiento, incluyendo discusiones sobre el cumplimiento, la exposición al riesgo, la responsabilidad, el contacto con las fuerzas del orden, _etc._
1. Comunicación con los usuarios (interna)
    1. Comunicar las actualizaciones de la respuesta a incidentes según el procedimiento
    1. Comunicar el impacto del incidente **y** las acciones de respuesta al mismo (e.j., contención: "¿Por qué está caído el archivo compartido?")
    1. Comunicar los requisitos: "¿Qué deben hacer y no hacer los usuarios?" (p. ej., no reenviar el correo, reportarlo, cambiar contraseña si se interactuó, no aprobar solicitudes MFA inesperadas)
1. Comunicar a los clientes
    1. Centrarse especialmente en aquellos cuyos datos se vieron afectados
    1. Genere las notificaciones requeridas en base a las regulaciones aplicables (particularmente aquellas que puedan considerar el phishing como una violación de datos o que requieren notificaciones de otro tipo)
   `TODO: Ampliar los requisitos y procedimientos de notificación para las regulaciones aplicables`
    1. Si hubo suplantación en **RRSS** o en la **web/tienda**, comunicarlo en los canales oficiales (web/redes) con un mensaje breve y verificable (cómo identificar comunicaciones legítimas, canales de contacto, y qué hacer si fueron víctimas).
1. Contactar con el/los proveedor/es de seguros
    1. Discutir qué recursos pueden poner a disposición, qué herramientas y proveedores apoyan y pagarán, _etc._
    1. Cumplir con los requisitos de presentación de informes y reclamaciones para proteger la elegibilidad.
1. Considere la posibilidad de notificar e implicar a [las fuerzas del orden](https://www.policia.es/_es/tupolicia_conocenos_estructura_dao_cgpoliciajudicial_bcit.php)
   `TODO: Vincule los siguiente puntos con los recursos reales de su organización`
    1. [Aplicación de la ley local](#TODO-enlace-a-actual-recurso)
    1. [Aplicación de la ley a nivel estatal o regional](#TODO-enlace-a-actual-recurso)
    1. [Fuerzas de seguridad nacionales o europeas](#TODO-enlace-a-actual-recurso)
1. Comuníquese con los proveedores de seguridad y de TI
   `TODO: Vincule las siguientes viñetas con los recursos reales de su organización`
    1. Notifique y colabore con [proveedores gestionados](#TODO-enlace-a-actual-recurso) para el procedimiento
    1. Notifique y colabore con [consultores de respuesta ante incidentes](#TODO-enlace-a-actual-recurso) para el procedimiento

### Recuperación

`OBJETIVO: Personalizar los pasos de recuperación para phishing (correos, cuentas, endpoint y controles preventivos).`

`OBJETIVO: Especificar herramientas y procedimientos para cada paso, a continuación.`

1. Poner en marcha un plan de continuidad de negocio/recuperación de desastres si el compromiso implica interrupciones de negocio: _e.j._, considerar la migración a ubicaciones operativas alternativas, clústers de conmutación por error, sistemas de copias de seguridad.
1. Reforzar los programas de formación sobre los ataques de phishing sospechosos. Los principales indicadores de sospecha pueden ser:
    * Errores ortográficos en el mensaje o en el asunto
    * Nombres de remitentes que parezcan de teléfono, incluida la falta de coincidencia entre el nombre y la dirección de correo electrónico.
    * Direcciones de correo electrónico personales para asuntos oficiales (e.j., correos electrónicos de gmail o yahoo de colegas de trabajo)
    * Líneas de asunto marcadas con "[EXTERNO]" en correos electrónicos que parecen internos.
    * [enlaces maliciosos o sospechosos](https://www.pcworld.com/article/248963/how-to-tell-if-a-link-is-safe-without-clicking-on-it.html)
    * Recibir un correo electrónico o un archivo adjunto que no se esperaba, pero que proviene de alguien conocido (contactar con el remitente antes de abrirlo).
    * Informar de actividades sospechosas al departamento de TI o de seguridad.
1. Asegúrese de que el personal de TI y de seguridad está al día de las técnicas de phishing más recientes.
1. Determine si ha fallado algún control al ser víctima de un ataque y rectifíquelo. He aquí una [buena fuente](https://www.proofpoint.com/us/security-awareness/post/14-things-do-after-phishing-attack) a tener en cuenta tras un ataque de phishing.

1. Mejorar controles de correo (cuando aplique):
    * Revisar/fortalecer SPF, DKIM y DMARC (y su monitoreo) para su dominio.[<sup>[8]</sup>](#phishing-playbook-ref-8)
    * Revisar políticas anti-phishing/anti-spoofing, protección de enlaces/adjuntos, y reporting.
    * Aumentar visibilidad: retención de logs, alertas de reglas de buzón y consentimientos OAuth.

### Recursos

#### Referencia: Acciones del usuario ante la sospecha de un ataque de phishing

`OBJETIVO: Personalizar los pasos para usuarios (botón de reportar phishing, contacto, tiempos de respuesta).`

1. Mantenga la calma y respire profundamente.
1. No haga clic en enlaces ni abra adjuntos. No responda al remitente.
1. Haga fotos/capturas de lo que ha notado: el mensaje de phishing, el enlace (si lo vio), la información del remitente.
1. Si ya hizo clic o introdujo credenciales, **repórtelo igualmente**; esto reduce el impacto.
1. Si realizó un pago o facilitó datos bancarios por petición del correo/mensaje, contacte inmediatamente con **Facturación/Compras** además de con el servicio de ayuda.
1. Tome notas (voz o papel). Todo ayuda. Documente lo siguiente:
    1. ¿Qué ha notado?
    1. ¿Por qué pensó que era un problema?
    1. ¿Qué estaba haciendo en el momento en que lo detectó?
    1. ¿Cuándo se produjo por primera vez, y con qué frecuencia desde entonces?
    1. ¿Dónde estaba cuando ocurrió y en qué red? (oficina/casa/tienda, con cable/inalámbrica, con/sin VPN, _etc._)
    1. ¿Qué sistemas está utilizando? (sistema operativo, nombre de host, _etc._)
    1. ¿Qué cuenta utiliza?
    1. ¿A qué datos suele acceder?
    1. ¿Con quién más se ha puesto en contacto sobre este incidente y qué les ha dicho?
1. Póngase en contacto con el [servicio de ayuda](#TODO-enlace-a-actual-recurso) utilizando la [línea directa de phishing](#TODO-enlace-a-actual-recurso) o la [barra de herramientas de reporte de phishing](#TODO-enlace-a-actual-recurso) y sea lo más servicial posible.
1. No borre el correo hasta que se le indique (puede ser necesario para investigación).
1. Tenga paciencia: la respuesta puede ser perturbadora, pero está protegiendo a su equipo y a la organización. **Gracias.**

#### Referencia: Acciones del servicio de ayuda ante un presunto ataque phishing

`OBJETIVO: Personalizar los pasos para el personal del service desk ante sospecha de phishing (plantilla, automatización y escalado).`

1. Mantenga la calma y respire profundamente.
1. Abra un ticket para documentar el incidente, según el procedimiento.
   `TODO: Personalizar la plantilla con las preguntas clave (véase más abajo) y el flujo de trabajo posterior`
1. Pídale al usuario que tome fotos/capturas mostrando lo que notó: el mensaje, el enlace (si lo abrió), la información del remitente, _etc._ Si es algo que notó directamente, haga lo mismo usted.
1. Tome notas. Si se trata de un informe de usuario, haga preguntas detalladas, incluyendo:
    1. ¿Qué ha notado?
    1. ¿Por qué pensó que era un problema?
    1. ¿Qué estaba haciendo en el momento en que lo detectó?
    1. ¿Cuándo se produjo por primera vez, y con qué frecuencia desde entonces?
    1. ¿De qué redes se trata? (oficina/casa/tienda, cableada/inalámbrica, con/sin VPN, _etc._)
    1. ¿De qué sistemas se trata? (sistema operativo, nombre de host, _etc._)
    1. ¿De qué datos se trata? (rutas, tipos de archivos, archivos compartidos, bases de datos, software, _etc._)
    1. ¿Qué usuarios y cuentas están implicados? (directorio activo, SaaS, SSO, cuentas de servicio, _etc._)
    1. ¿A qué datos suelen acceder los usuarios implicados?
    1. ¿Con quién más se ha puesto en contacto sobre este incidente y qué les ha dicho?
1. Confirme si hubo interacción: clic, descarga, credenciales, MFA, OAuth, pago.
1. Haga las preguntas de seguimiento que sean necesarias. **Usted es parte de la respuesta a incidentes; contamos con usted.**
1. Obtenga información de contacto detallada del usuario (domicilio, oficina, móvil), si procede.
1. Registre toda la información en el ticket, incluyendo evidencias.
1. Ponga en cuarentena a los usuarios y sistemas afectados (si procede).
   `TODO: Personalizar el contenido de los pasos, automatizar tanto como sea posible.`
1. Póngase en contacto con el [equipo de seguridad](#TODO-enlace-a-actual-recurso) y prepárese para participar en la respuesta según las indicaciones: investigación, remediación, comunicación y recuperación.

#### Información adicional

1. <a name="phishing-playbook-ref-1"></a>[CISA: Report Phishing](https://www.cisa.gov/report) (incluye canal de reporte y orientación)
1. <a name="phishing-playbook-ref-2"></a>[NIST SP 800-61 Rev. 2: Computer Security Incident Handling Guide](https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-61r2.pdf)
1. <a name="phishing-playbook-ref-3"></a>[MITRE ATT&CK: Phishing (T1566)](https://attack.mitre.org/techniques/T1566/)
1. <a name="phishing-playbook-ref-4"></a>[RFC 5322: Internet Message Format](https://www.rfc-editor.org/rfc/rfc5322)
1. <a name="phishing-playbook-ref-5"></a>[ENISA: Phishing (panorama y recomendaciones)](https://www.enisa.europa.eu/topics/csirts-in-europe/glossary/phishing)
1. <a name="phishing-playbook-ref-6"></a>[Google Admin Toolbox: Messageheader](https://toolbox.googleapps.com/apps/messageheader/)
1. <a name="phishing-playbook-ref-7"></a>[Microsoft: Message Header Analyzer (MHA)](https://mha.azurewebsites.net/)
1. <a name="phishing-playbook-ref-8"></a>[DMARC (RFC 7489)](https://www.rfc-editor.org/rfc/rfc7489) y [SPF (RFC 7208)](https://www.rfc-editor.org/rfc/rfc7208) y [DKIM (RFC 6376)](https://www.rfc-editor.org/rfc/rfc6376)
1. <a name="phishing-playbook-ref-9"></a>[ICANN: IDN / Homograph attacks (conceptos)](https://www.icann.org/resources/pages/idn-2012-02-25-en)
1. <a name="phishing-playbook-ref-10"></a>[Reverse WHOIS (Whoxy)](https://www.whoxy.com/reverse-whois/)
1. <a name="phishing-playbook-ref-11"></a>[MITRE ATT&CK: User Execution (T1204)](https://attack.mitre.org/techniques/T1204/)
1. <a name="phishing-playbook-ref-12"></a>[NCSC (UK): Phishing](https://www.ncsc.gov.uk/guidance/phishing)
1. <a name="phishing-playbook-ref-13"></a>[NIST: Digital Identity Guidelines (SP 800-63) - autenticación/MFA (familia)](https://pages.nist.gov/800-63-3/)
1. <a name="phishing-playbook-ref-14"></a>[Microsoft: Consent phishing (conceptos y mitigación)](https://learn.microsoft.com/en-us/microsoft-365/security/office-365-security/identify-and-remediate-oauth-apps-that-are-approved-by-users)
1. <a name="phishing-playbook-ref-15"></a>[FBI IC3: Report Internet Crime](https://www.ic3.gov/)
1. <a name="phishing-playbook-ref-16"></a>[INCIBE: Phishing (orientación al usuario)](https://www.incibe.es/ciudadania/avisos/phishing)
1. <a name="phishing-playbook-ref-17"></a>[CCN-CERT: Guías y recursos (España)](https://www.ccn-cert.cni.es/)
1. <a name="phishing-playbook-ref-18"></a>[Ejemplos de correos de phishing (Phishing.org)](https://www.phishing.org/phishing-examples)
1. <a name="phishing-playbook-ref-19"></a>[SecurityMetrics: 7 ways to recognize phishing emails](https://www.securitymetrics.com/blog/7-ways-recognize-phishing-email)
1. <a name="phishing-playbook-ref-20"></a>[InfoSec Institute: Anti-phishing resources](https://resources.infosecinstitute.com/category/enterprise/phishing/phishing-countermeasures/top-16-anti-phishing-resources/#gref) y [best practices](https://resources.infosecinstitute.com/category/enterprise/phishing/phishing-countermeasures/anti-phishing-best-practices/#gref)
