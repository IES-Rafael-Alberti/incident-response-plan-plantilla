## Playbook: Fuga de datos / Exfiltración de información

**Investigar, remediar (contener, erradicar) y comunicar en paralelo.**

Asigna pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es puramente secuencial. Utiliza tu mejor criterio.

### Finalidad y activación

Este playbook define la respuesta específica ante incidentes de fuga, extracción o exfiltración no autorizada de información. Su finalidad es cortar la salida de datos, preservar evidencias, valorar el impacto regulatorio y recuperar el control sobre la información comprometida.

Se activará ante cualquiera de estas señales:

1. Transferencias masivas o inusuales de datos hacia destinos externos;
2. Alertas de herramientas de monitorización, DLP o registros equivalentes;
3. Hallazgo de envíos, sincronizaciones o accesos fuera de horario o patrón habitual;
4. Sospecha fundada de exposición de datos personales, contractuales o internos sensibles.

### Roles mínimos implicados

Como mínimo, en este playbook deben intervenir estas funciones:

* Responsable del incidente o responsable de seguridad, para coordinar y escalar la respuesta;
* Equipo TIC, para análisis técnico, contención y revisión de accesos;
* Help desk, para trazabilidad inicial y soporte operativo;
* Asesoría jurídica y apoyo RGPD, por el posible impacto regulatorio;
* Responsables de negocio afectados, para priorizar procesos y datos críticos.

### Investigar

1. **Confirmar la fuga o exfiltración de datos.**
    * Revisar alertas de DLP o de herramientas equivalentes, SIEM si existe, firewall, antivirus gestionado por la subcontrata, servicios cloud y registros del servidor.
    * Comprobar si ha habido transferencias masivas, accesos fuera de horario, envíos a correos externos o sincronizaciones inusuales.
    * Validar si se trata de una fuga real, un error operativo o una transferencia autorizada mal documentada.
2. **Determinar el vector y el alcance.**
    * Identificar si la salida de información se produjo por correo, almacenamiento cloud, dispositivo USB, acceso remoto, aplicación web, FTP o mensajería.
    * Determinar si el origen es interno, externo o mixto.
    * Identificar qué datos fueron afectados:
        * Datos personales de clientes y proveedores;
        * Información financiera o laboral;
        * Documentación legal o contractual;
        * Información interna sensible.
3. **Recopilar y preservar evidencias.**
    * Logs de red, autenticación, correo, sistemas cloud y acceso a carpetas compartidas.
    * Trazas de dispositivos extraíbles o sincronizaciones externas, si están disponibles.
    * Evidencias del volumen, horario, usuario implicado, sistema de origen y destino aparente.
4. **Evaluar el impacto.**
    * Determinar la sensibilidad, volumen y criticidad de la información exfiltrada.
    * Confirmar si los datos incluyen información protegida por RGPD.
    * Valorar impacto legal, reputacional, contractual y operativo.
    * Criterio orientativo de severidad:
        * **media**, si afecta a información interna limitada y sin datos personales;
        * **alta**, si afecta a información sensible o a varios usuarios o departamentos;
        * **crítica**, si incluye datos personales, información financiera, contractual o gran volumen de datos.
5. **Formular preguntas clave.**
    * Cuándo empezó la exfiltración y cuánto duró.
    * Si fue un hecho único o una extracción continuada.
    * Si existió escalado de privilegios, movimiento lateral o borrado de rastros.
    * Si la información puede haberse publicado o transferido a terceros.

### Remediar

* **Planificar eventos de remediación** en los que estos pasos se ejecuten juntos, o de forma coordinada, con los equipos adecuados preparados para evitar más pérdida de información.
* **Considerar el momento y las compensaciones** de las acciones de remediación: algunas medidas pueden afectar a la operativa o alertar al atacante.

#### Contención

* Aislar los sistemas o cuentas desde los que se está produciendo la exfiltración.
* Suspender accesos externos, sincronizaciones o transferencias sospechosas.
* Revocar credenciales, tokens, accesos remotos o permisos compartidos de las cuentas implicadas.
* Bloquear temporalmente canales de salida implicados:
    * Correo saliente no esencial;
    * Almacenamiento cloud afectado;
    * USB o dispositivos extraíbles, si procede;
    * FTP o servicios equivalentes.
* Incrementar la monitorización sobre cuentas, equipos y repositorios de información crítica.
* Preservar pruebas sin borrar ficheros, cuentas ni dispositivos antes del análisis técnico.

#### Erradicar

* Eliminar malware, scripts o herramientas de exfiltración detectadas.
* Corregir la causa raíz:
    * Credenciales comprometidas;
    * Permisos excesivos;
    * Mala configuración cloud;
    * Falta de controles DLP;
    * Error humano o abuso interno.
* Rotar contraseñas de las cuentas afectadas y revisar permisos heredados o excesivos.
* Corregir configuraciones inseguras en correo, carpetas compartidas, aplicaciones o almacenamiento cloud.
* Revisar si hay puertas traseras, reglas automáticas o aplicaciones conectadas no autorizadas.

#### Referencia: Recursos de remediación

* Personal: equipo TIC, responsable de seguridad, help desk, asesoría jurídica, consultoría RGPD y responsables de negocio afectados.
* Técnicos: logs de red y autenticación, consolas cloud, sistema de tickets, inventario de activos, herramientas EDR/DLP y backups.
* Logísticos: canal de escalado interno, coordinación con proveedores cloud y disponibilidad para análisis fuera de horario si procede.
* Financieros: soporte externo forense, notificaciones regulatorias, restauración de servicios y posibles costes contractuales o reputacionales.

### Comunicar

1. Elevar el incidente a Dirección y al responsable de seguridad con valoración preliminar del tipo de datos afectados.
    1. Escalar de inmediato a asesoría jurídica y a la consultoría RGPD cuando existan datos personales o indicios razonables de brecha notificable.
2. Documentar cronología, evidencias, cuentas implicadas, volumen estimado y medidas de contención.
3. Coordinar con asesoría jurídica y consultoría RGPD la valoración regulatoria, contractual y de notificación.
4. Evaluar obligación de notificación a la AEPD y, si procede, a las personas afectadas.
5. Informar a departamentos afectados sobre restricciones temporales y medidas operativas.
6. Comunicar a clientes o proveedores cuando sus datos o servicios puedan haberse visto comprometidos.
7. Valorar comunicación a INCIBE-CERT y a fuerzas y cuerpos de seguridad si hay indicios delictivos o perjuicio relevante.
8. Mantener un registro completo de todas las comunicaciones y decisiones adoptadas.

### Recuperación

1. Orden recomendado de recuperación:
    1. Cierre del canal de fuga y saneamiento de cuentas o sistemas implicados;
    2. Restauración de permisos y accesos mínimos seguros;
    3. Reanudación de transferencias o integraciones necesarias para negocio;
    4. Normalización del trabajo sobre datos sensibles con monitorización reforzada.
2. Restaurar el funcionamiento normal solo cuando la vía de fuga esté cerrada y la seguridad del entorno haya sido verificada.
3. Revisar y reforzar controles de acceso, compartición de datos y privilegios.
4. Validar integridad de los sistemas implicados y confirmar que no persisten transferencias anómalas.
5. Reforzar monitorización sobre datos sensibles durante las semanas posteriores.
6. Actualizar procedimientos sobre tratamiento de datos, permisos y uso de servicios externos.
7. Impartir formación específica si la fuga se debió a error humano o mala práctica operativa.

### Guía operativa rápida

Durante la primera hora, la secuencia recomendada será la siguiente:

| Paso | Acción operativa |
|---|---|
| 1 | Confirmar la sospecha y abrir el incidente. |
| 2 | Clasificar la severidad según tipo y volumen de datos. |
| 3 | Cortar accesos, sincronizaciones o canales de salida relacionados. |
| 4 | Preservar logs y evidencias antes de modificar sistemas. |
| 5 | Escalar a Seguridad, Dirección y apoyo legal o RGPD si hay datos personales. |
| 6 | Identificar sistema, cuenta y destino probable de la salida de información. |
| 7 | Definir restricciones temporales para evitar nuevas extracciones. |

### Recursos

#### Referencia: Acciones del usuario ante sospecha de fuga de datos

1. Mantener la calma y no borrar ni modificar archivos relacionados con el incidente.
2. Informar de inmediato a TIC o al help desk si se observan envíos inusuales, descargas masivas o accesos no autorizados.
3. Anotar qué se observó, a qué hora, en qué equipo y con qué cuenta.
4. No reenviar información sensible ni comentar el incidente fuera de los canales autorizados.
5. Seguir las instrucciones del equipo de respuesta.

#### Referencia: Acciones del Help Desk ante una posible fuga de datos

1. Abrir un ticket prioritario y verificar la identidad del informante.
2. Recoger:
    1. Sistema o aplicación implicada;
    2. Cuenta utilizada;
    3. Tipo de datos afectados;
    4. Hora aproximada y acción observada.
3. Escalar de inmediato a TIC y al responsable de seguridad.
4. No borrar evidencias ni restaurar sistemas sin autorización del equipo técnico.
5. Documentar todas las acciones y comunicaciones.

#### Información adicional

1. [MITRE ATT&CK - Exfiltration Tactic (TA0010)](https://attack.mitre.org/tactics/TA0010/)
2. [NIST SP 800-122 - Guide to Protecting the Confidentiality of Personally Identifiable Information (PII)](https://csrc.nist.gov/pubs/sp/800/122/final)
3. [NIST SP 800-61 Rev. 2 - Computer Security Incident Handling Guide](https://csrc.nist.gov/pubs/sp/800/61/r2/final)

