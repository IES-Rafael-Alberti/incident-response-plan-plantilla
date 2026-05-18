## Playbook: Phishing

**Investigar, remediar (contener, erradicar) y comunicar en paralelo.**

Asigna pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es meramente secuencial. Utiliza tu mejor criterio.

### Aplicación del plan general

Este playbook desarrolla el escenario técnico, pero deberá ejecutarse siempre bajo el modelo operativo de [`plan.md`](../plan.md). En particular:

1. El `Incident Commander` dirigirá la respuesta, designará adjunto y escriba cuando corresponda y autorizará las decisiones de escalado relevantes.
2. Se abrirán la llamada, el chat y el expediente del incidente conforme al plan general.
3. La documentación, la cronología, los IOC, las evidencias y la cadena de custodia se mantendrán en el expediente del incidente.
4. Las actualizaciones de estado seguirán la cadencia definida en el plan general, con referencia de dos horas mientras el incidente permanezca activo, salvo ajuste expreso del `Incident Commander`.
5. Ninguna comunicación externa o ampliación de la difusión interna fuera del equipo de respuesta se realizará sin autorización del `Incident Commander`.

### Finalidad y activación

Este playbook define la respuesta específica ante incidentes de phishing que afecten, o puedan afectar, al correo corporativo, a las credenciales, a los usuarios o a la información de la empresa. Su finalidad es detectar con rapidez el alcance del engaño, contener el posible compromiso de cuentas o equipos y coordinar una respuesta clara con TIC, Dirección y las áreas afectadas.

Se activará ante cualquiera de estas señales:

1. Recepción de un correo sospechoso con suplantación, enlace o adjunto malicioso;
2. Aviso de usuario sobre posible robo de credenciales, pago fraudulento o archivo descargado;
3. Alertas del servidor de correo, antivirus o servicios cloud relacionadas con campañas de phishing;
4. Detección de reglas de reenvío, accesos anómalos o cambios sospechosos en buzones.

### Roles mínimos implicados

Como mínimo, en este playbook deben intervenir estas funciones:

* `Incident Commander`, para coordinar la respuesta y aprobar el escalado operativo y de comunicación;
* Adjunto del `Incident Commander` o escriba, para seguimiento de tiempos, tareas y cronología;
* Equipo TIC, para análisis técnico, bloqueo de cuentas, correo y equipos;
* Help desk, para recepción de avisos y soporte a usuarios;
* Responsables de departamento afectados, especialmente si intervienen pagos o datos sensibles;
* Asesoría jurídica o apoyo RGPD, si existe riesgo para datos personales o fraude.

### Documentación y evidencias

1. Crear o actualizar el expediente del incidente con el nombre definido en el plan general.
2. Registrar desde el inicio:
   * Resumen inicial del incidente;
   * Usuarios, cuentas y buzones afectados;
   * Impacto funcional, económico y de datos;
   * Línea temporal de eventos;
   * Responsables asignados;
   * Decisiones de contención, erradicación y comunicación.
3. Conservar mensajes, cabeceras, capturas, hashes, URL, logs, alertas y acciones de purgado con fecha, hora, origen y responsable de la recogida.
4. Aplicar cadena de custodia cuando las evidencias puedan ser relevantes para acciones legales, contractuales o periciales.

### Investigar

1. **Ámbito del ataque.** Normalmente el incidente será reportado por un usuario, cliente, proveedor o por el equipo TIC al detectar un correo sospechoso.
    * Determinar el **número total de usuarios afectados** y si pertenecen a departamentos sensibles como Facturación, RR. HH., TIC, Dirección o Comunicación.
    * Comprender **las acciones de los usuarios** tras recibir el mensaje: si abrieron el correo, pulsaron enlaces, descargaron adjuntos, introdujeron credenciales, autorizaron MFA o realizaron pagos.
    * Buscar actividad potencialmente relacionada en:
        * Buzones de correo corporativo;
        * Redes sociales o mensajería, si el intento continuó por otros canales;
        * Avisos del antivirus gestionado por la subcontrata;
        * Logs del servidor de correo;
        * Notificaciones de inicio de sesión anómalo en servicios cloud;
        * Correos no entregados, respuestas automáticas sospechosas o reglas anómalas;
        * Consultas al help desk o incidencias similares en las dos sedes.
2. **Analizar el mensaje** utilizando un dispositivo seguro y, si es posible, un entorno aislado de análisis. Determinar:
    * Quién ha recibido el mensaje y si hubo reenvíos internos;
    * Quién era realmente el objetivo del ataque;
    * Dirección de correo del remitente y discrepancias con el nombre mostrado;
    * Asunto, cuerpo, tono, urgencia y peticiones realizadas;
    * Adjuntos, sin abrirlos en equipos de producción;
    * Enlaces, dominios y nombres de host, sin hacer clic directamente;
    * Metadatos y cabeceras del correo:
        * Ruta seguida por el mensaje;
        * IP de origen;
        * Resultados SPF, DKIM y DMARC, si están disponibles;
        * Campo `Reply-To`, remitente autenticado y posibles dominios similares;
        * Diferencias entre el campo `From` y la identidad autenticada.
    * Cualquier peculiaridad: faltas ortográficas, peticiones urgentes, cambio de cuenta bancaria, enlaces acortados, etiqueta de correo externo o imitación de proveedores.
3. **Analizar los enlaces y los archivos adjuntos.**
    * Consultar de forma pasiva el dominio y la reputación del remitente con `nslookup`, `whois`, reputación DNS y fuentes OSINT.
    * Buscar dominios relacionados, registros recientes o campañas semejantes por OSINT y reverse whois cuando sea útil.
    * Enviar preferentemente hashes, URL ya desactivadas o muestras anonimizadas a servicios de reputación o sandbox aprobados por la empresa, como VirusTotal, Hybrid Analysis o el servicio equivalente disponible.
    * No subir a servicios públicos adjuntos completos o contenido sensible si contienen datos personales, documentación interna o información de clientes, salvo autorización expresa del procedimiento interno.
    * Revisar si el dominio suplantado se parece al de la propia empresa, al proveedor de hosting, a bancos, a la asesoría legal o a proveedores habituales.
    * Comprobar si el adjunto intenta instalar malware, robar credenciales o habilitar macros.
4. **Categorizar el tipo de ataque.**
    * Phishing genérico orientado al robo de credenciales;
    * Spear phishing dirigido a personal de Facturación, Compras o Dirección;
    * Business email compromise para fraude económico;
    * Smishing o vishing, si el ataque continúa por móvil o llamada;
    * Phishing con malware adjunto o enlace de descarga.
5. **Determinar la gravedad.** Considerar:
    * Si hay credenciales corporativas comprometidas;
    * Si se accedió a datos personales de clientes o proveedores;
    * Si se afectaron buzones con información financiera, laboral o legal;
    * Si hubo pagos, cambios de cuentas bancarias o instrucciones falsas;
    * Número de activos y usuarios afectados;
    * Posible impacto reputacional y operativo;
    * Posible afectación a servicios cloud o a la tienda online.
    * Criterio orientativo de severidad:
        * **baja**, si el correo se detecta antes de la interacción y no hay indicios de compromiso;
        * **media**, si hubo clic, descarga o exposición limitada sin evidencia de acceso efectivo;
        * **alta**, si se comprometieron credenciales, se afectó a varios usuarios o hubo impacto operativo;
        * **crítica**, si hay fraude económico, acceso a datos personales, compromiso de cuentas privilegiadas o afectación a servicios esenciales.
6. **Delimitar el alcance técnico del compromiso.**
    * Revisar inicios de sesión recientes en correo, VPN, paneles cloud y aplicaciones empresariales.
    * Verificar si existen reglas de reenvío automático, delegaciones de buzón o cambios no autorizados en firmas y bandejas.
    * Revisar si los equipos desde los que se abrió el correo muestran alertas del antivirus o comportamientos anómalos.

### Remediar

* **Planificar eventos de remediación** en los que estos pasos se pongan en marcha juntos, o de forma coordinada, con los equipos adecuados listos para responder a cualquier interrupción.
* **Considerar el momento y las compensaciones** de las acciones de remediación: la respuesta tiene consecuencias.

#### Contención

* Contener las cuentas afectadas.
    * Forzar el cambio inmediato de contraseña de las cuentas afectadas o potencialmente afectadas.
    * Cerrar sesiones activas en correo, aplicaciones cloud, VPN y paneles administrativos.
    * Reforzar o forzar MFA donde esté disponible.
    * Deshabilitar temporalmente cuentas si existen evidencias de uso indebido.
* Bloquear la actividad en función de los indicadores de compromiso descubiertos.
    * Bloquear dominios maliciosos en DNS, firewall, proxy o filtros de correo.
    * Bloquear remitentes, asuntos, hashes de adjuntos y URL detectadas.
    * Purgar los mensajes equivalentes del resto de bandejas de entrada.
* Implementar retención forense de los mensajes y conservar exportaciones del correo, cabeceras y evidencias de acceso.
* Aislar los equipos que hayan descargado ficheros o ejecutado contenido sospechoso.
* Contener el compromiso más amplio de acuerdo con el plan general de respuesta si el phishing ha desembocado en malware, fraude o acceso no autorizado.
* Aumentar el nivel de alerta de monitorización durante al menos varios días sobre:
    * Buzones comprometidos;
    * IP de acceso sospechosas;
    * Reglas de reenvío;
    * Movimientos en servicios cloud y paneles de proveedores.
* Confirmar con la subcontrata de antivirus que las firmas, políticas y telemetría están actualizadas en los activos afectados.
* Registrar en el expediente el origen de cada evidencia y la persona responsable de su recogida.

#### Erradicar

* Eliminar reglas de correo, delegaciones, reenvíos y aplicaciones OAuth no autorizadas.
* Revocar tokens de sesión, cookies persistentes y accesos de dispositivos no reconocidos.
* Eliminar adjuntos maliciosos y ficheros descargados en los equipos afectados tras el análisis correspondiente.
* Ejecutar análisis antimalware completos y, si procede, reconstruir el equipo si se confirma infección.
* Corregir la causa raíz: falta de MFA, ausencia de filtro, debilidad en el proceso de validación de pagos o carencia de concienciación.

#### Referencia: Recursos de remediación

* Personal: equipo TIC, responsable de seguridad, help desk, responsables de departamento afectados, subcontrata del antivirus y asesoría RGPD.
* Técnicos: acceso a consola de correo, logs de autenticación, herramientas de filtrado, inventario de equipos, sandbox o reputación y sistema de tickets.
* Logísticos: teléfono de guardia TIC, canal interno de aviso urgente, equipo de sustitución si se aísla un puesto crítico y coordinación con proveedor cloud.
* Financieros: horas extraordinarias del equipo TIC, soporte externo especializado y posibles costes de restauración o asesoramiento legal.

### Comunicar

1. Elevar el incidente y comunicarlo a Dirección y al responsable de seguridad según el procedimiento interno.
    1. Escalado inmediato si la severidad es alta o crítica.
    2. Escalado al responsable del departamento afectado si el incidente alcanza a Facturación, RR. HH., TIC, Dirección o proveedores clave.
2. Documentar el incidente en el sistema de tickets o registro de incidentes, dejando cronología, usuarios afectados, IOC y decisiones.
3. Comunicarse con asesoría jurídica y con la consultoría de RGPD cuando exista riesgo para datos personales o fraude económico.
4. Comunicación con los usuarios, de forma interna.
    1. Informar rápidamente a los potenciales afectados para que no interactúen con el mensaje.
    2. Explicar el impacto operativo de las medidas de contención, como bloqueo de cuenta o aislamiento de equipo.
    3. Indicar claramente qué deben hacer: no borrar el correo, no reenviarlo, no seguir enlaces y avisar de cualquier mensaje similar.
5. Comunicar a clientes o proveedores si sus datos, cuentas o transacciones pueden haberse visto afectados, siempre con autorización del `Incident Commander` y coordinación con Legal, RGPD y Comunicación.
    1. Priorizar los casos en los que exista acceso no autorizado a información personal o fraude de suplantación.
    2. Preparar, si aplica, las notificaciones exigidas por RGPD y por contratos con terceros.
6. Contactar con el proveedor de seguros, si la empresa dispone de cobertura de ciberincidentes.
7. Considerar la posibilidad de notificar e implicar a las fuerzas y organismos competentes.
    1. INCIBE-CERT para apoyo y reporte.
    2. AEPD, si se confirma una brecha de datos personales notificable.
    3. Policía Nacional o Guardia Civil si existe fraude, suplantación relevante o perjuicio económico.
8. Comunicarse con proveedores de seguridad y de TI.
    1. Coordinarse con la subcontrata del antivirus para ampliar detección y revisar telemetría.
    2. Coordinarse con el proveedor de correo, cloud o hosting si el incidente afecta a sus servicios.
    3. Si el incidente afecta a pagos o a la tienda online, coordinarse también con el proveedor externo correspondiente antes de reabrir la operativa.

### Recuperación

1. Orden recomendado de recuperación:
    1. Cuentas corporativas afectadas y accesos críticos a correo y servicios cloud;
    2. Buzones, reglas y delegaciones alteradas;
    3. Equipos impactados por descargas o malware;
    4. Operativa asociada a pagos, proveedores o atención al cliente, si se vio afectada.
2. Restablecer el acceso normal de las cuentas tras verificar el cambio de credenciales, la revocación de sesiones y la ausencia de actividad anómala.
3. Revisar si es necesario restaurar configuraciones de correo, reglas, buzones o archivos modificados durante el incidente.
4. Reforzar los programas de formación frente a phishing, especialmente para departamentos de mayor riesgo.
    * Verificar remitentes y dominios.
    * Desconfiar de mensajes urgentes sobre pagos, credenciales o documentos compartidos.
    * Confirmar por un canal alternativo cualquier cambio de cuenta bancaria o instrucción económica.
    * Reportar de inmediato correos sospechosos al help desk.
5. Confirmar si fallaron controles técnicos o procedimentales y establecer acciones correctoras:
    * Mejorar filtros de correo;
    * Desplegar MFA;
    * Formalizar un procedimiento de verificación de pagos;
    * Revisar accesos desde dispositivos móviles y nube.
6. Mantener una vigilancia reforzada de las cuentas afectadas durante los días posteriores para detectar nuevos accesos o intentos de fraude.

### Cierre y AAR

1. El `Incident Commander` declarará el cierre operativo del incidente cuando la campaña esté contenida, las cuentas saneadas y los mensajes maliciosos retirados o controlados.
2. Completar el expediente con cronología final, impacto, evidencias, decisiones de comunicación y resultado de la recuperación.
3. Programar la revisión posterior a la acción (AAR) dentro del plazo definido en el plan general.
4. Registrar acciones de mejora sobre filtros de correo, MFA, concienciación, validación de pagos y coordinación con proveedores.

### Guía operativa rápida

Durante la primera hora, la secuencia recomendada será la siguiente:

| Paso | Acción operativa |
|---|---|
| 1 | Confirmar el aviso y abrir el incidente. |
| 2 | Clasificar la severidad inicial. |
| 3 | Identificar si hubo clic, descarga, entrega de credenciales o fraude. |
| 4 | Bloquear cuentas, sesiones, dominios o correos relacionados. |
| 5 | Aislar equipos si hubo descarga o ejecución. |
| 6 | Conservar evidencias básicas. |
| 7 | Escalar a Dirección, Seguridad, departamento afectado y apoyo legal si procede. |

### Recursos

#### Referencia: Acciones del usuario ante la sospecha de un ataque de phishing

1. Mantener la calma y no interactuar más con el correo sospechoso.
2. No pulsar enlaces, no descargar adjuntos adicionales y no responder al remitente.
3. Hacer capturas de pantalla del correo, del remitente y, si ya se hizo clic, de la página mostrada.
4. Tomar nota de:
    1. Qué se ha notado;
    2. Por qué se ha considerado sospechoso;
    3. Qué se estaba haciendo en el momento de detectarlo;
    4. Si se hizo clic, se descargó algo o se introdujeron datos;
    5. La hora aproximada;
    6. La red y ubicación desde la que se accedió, por ejemplo sede, casa, wifi, cable o VPN;
    7. El sistema y la cuenta utilizados;
    8. Si alguien más recibió el mismo mensaje.
5. Contactar con el servicio de ayuda o con TIC por el canal interno habilitado y remitir el mensaje como adjunto si se indica.
6. Cambiar la contraseña inmediatamente si se introdujeron credenciales en una web sospechosa.

#### Referencia: Acciones del servicio de ayuda ante un presunto ataque de phishing

1. Mantener la calma y abrir un ticket con prioridad adecuada.
2. Pedir al usuario capturas, hora aproximada, acciones realizadas y el mensaje original.
3. Formular preguntas de triage detalladas:
    1. Qué ha observado exactamente;
    2. Por qué le pareció sospechoso;
    3. Qué estaba haciendo en el momento de detectarlo;
    4. Cuándo ocurrió por primera vez y si se ha repetido;
    5. En qué red y ubicación estaba trabajando;
    6. Qué sistema, cuenta y buzón estaban implicados;
    7. A qué datos o aplicaciones accede habitualmente;
    8. Con quién más ha compartido el mensaje o el incidente.
4. Determinar rápidamente si hubo solo recepción del correo o también clic, descarga, ejecución o entrega de credenciales.
5. Si hubo credenciales comprometidas, forzar cambio de contraseña o escalar a TIC para bloqueo inmediato.
6. Si hubo descarga o ejecución, ordenar el aislamiento del equipo y escalar a Seguridad o TIC.
7. Registrar toda la información relevante:
    1. Usuario, departamento y sede;
    2. Dirección del remitente y asunto;
    3. Acciones realizadas;
    4. Sistemas, cuentas y datos potencialmente afectados.
8. Ponerse en contacto con el equipo TIC, el responsable de seguridad y, si procede, la subcontrata del antivirus para la respuesta coordinada.

#### Información adicional

1. [CISA - Avoiding Social Engineering and Phishing Attacks](https://www.cisa.gov/news-events/news/avoiding-social-engineering-and-phishing-attacks)
2. [CISA - Recognize and Report Phishing](https://www.cisa.gov/secure-our-world/recognize-and-report-phishing)
3. [MITRE ATT&CK - Phishing (T1566)](https://attack.mitre.org/techniques/T1566/)
4. [MITRE ATT&CK - Valid Accounts (T1078)](https://attack.mitre.org/techniques/T1078/)
5. [NIST SP 800-61 Rev. 2 - Computer Security Incident Handling Guide](https://csrc.nist.gov/pubs/sp/800/61/r2/final)
