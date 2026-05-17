# Plan de respuesta a incidentes para {{COMPANY_NAME}}

Autor: {{AUTHOR_NAME}}, {{AUTHOR_EMAIL}}

Revisión {{REVISION_NUMBER}}, Publicado {{RELEASE_DATE}}

Este plan define la actuación durante un incidente de ciberseguridad en {{COMPANY_NAME}}. Está adaptado al Plan Director de Seguridad, a los activos críticos identificados y a los incidentes más probables para una asesoría que presta servicios a autónomos y PYMES.

Fue revisado por última vez el {{REVIEW_DATE}}. Fue probado por última vez en {{TEST_DATE}}.

El objetivo es responder de forma rápida, coordinada y ciberresiliente, manteniendo la continuidad de los servicios críticos siempre que sea posible y reduciendo el impacto legal, operativo y reputacional.

# Evaluar

1. Mantener la calma y actuar con hechos, no con suposiciones.
2. Recoger la información inicial: alerta, usuario afectado, sistema, hora, síntoma, activo implicado, posible vector y evidencias disponibles.
3. Confirmar si hay impacto sobre confidencialidad, integridad o disponibilidad.
4. Clasificar la severidad inicial.
5. Activar el equipo de respuesta si se confirma o se sospecha razonablemente un incidente.

## Activos críticos del PDS

Durante la evaluación se debe comprobar si el incidente afecta a alguno de los activos priorizados en el Plan Director de Seguridad:

| Activo | Motivo de criticidad |
|---|---|
| CRM/ERP | Soporta gestión de clientes, fiscalidad, facturación y operaciones principales. |
| Servidores de archivos y aplicaciones | Contienen documentación contable, fiscal y operativa. |
| Datos personales de clientes, proveedores y empleados | Tienen impacto RGPD/LOPDGDD, reputacional y contractual. |
| Correo corporativo | Vector principal de phishing, fraude, suplantación y fuga de información. |
| Página web y tienda online externalizada | Impacto reputacional, disponibilidad y dependencia de proveedor. |
| Copias de seguridad | Base de la recuperación ante ransomware, borrado o corrupción de datos. |
| Puestos de trabajo | Punto habitual de entrada por phishing, malware o credenciales robadas. |
| Servicios cloud y proveedores | Riesgo de dependencia, acceso externo, errores de configuración y cadena de suministro. |

## Evaluar el impacto funcional

Valorar el impacto sobre la operación de la empresa:

* **Alto:** parada de CRM/ERP, servidor de archivos, correo, web/tienda, backups o varios puestos de trabajo. Puede afectar a plazos fiscales, atención a clientes o continuidad de negocio.
* **Medio:** degradación de un servicio o afectación parcial a un departamento, pero con alternativas temporales.
* **Bajo:** incidente localizado sin interrupción relevante.
* **Sin impacto funcional:** tratar como evento de seguridad o ticket ordinario, salvo que haya riesgo sobre datos o credenciales.

## Evaluar el impacto de la información

Valorar si se ha producido o podría producirse:

* Acceso no autorizado a datos personales, fiscales, contables, contractuales o credenciales.
* Exfiltración, publicación, modificación, cifrado o borrado de información.
* Uso indebido de cuentas corporativas, correo, CRM/ERP, cloud o accesos de proveedor.
* Pérdida de trazabilidad, logs o evidencias.

Si hay datos personales afectados, avisar desde el inicio a Legal/Cumplimiento para valorar obligaciones RGPD/LOPDGDD y posible notificación a la AEPD.

## Clasificar severidad

La severidad se revisa durante todo el incidente. Si aparecen nuevos hechos, el Incident Commander puede subir o bajar la clasificación.

| Severidad | Criterios | Escalado mínimo |
|---|---|---|
| **S1 Crítico** | Parada de negocio, ransomware activo, afectación a CRM/ERP o backups, fuga masiva de datos personales, compromiso de cuenta privilegiada, proveedor crítico comprometido o exposición pública grave. | Incident Commander, Dirección, TIC/CISO, Legal/Cumplimiento, Comunicación y proveedor/SOC externo si aplica. |
| **S2 Alto** | Afectación a sistemas críticos sin parada total, acceso no autorizado probable, phishing con credenciales usadas, malware contenido, brecha limitada o incidente en proveedor con impacto relevante. | Incident Commander, TIC/CISO, propietario del servicio, Legal si hay datos personales y Comunicación si hay terceros. |
| **S3 Medio** | Incidente confirmado pero localizado: una cuenta, un equipo, un buzón o servicio no crítico, sin evidencias de exfiltración ni propagación. | TIC/CISO, propietario del activo e Incident Commander si requiere coordinación. |
| **S4 Bajo** | Intento bloqueado, falso positivo razonable, evento menor sin acceso confirmado ni impacto. | Gestión por TIC/seguridad con registro y seguimiento. |

## Seleccionar playbook

Escoger el playbook más cercano al escenario observado. Si un incidente encaja en varios escenarios, activar el principal y usar los demás como apoyo.

| Escenario | Activos/Riesgos PDS | Playbook o línea de respuesta |
|---|---|---|
| Ransomware | R01, R02, R06, R08; CRM/ERP, servidores, backups, puestos | Ransomware |
| Phishing y correo malicioso | R03, R05, R08; correo, credenciales, datos personales | Phishing |
| Compromiso de identidad y acceso | R01, R03, R05, R08; cuentas, VPN, correo, CRM/ERP, cloud | Identidad y acceso |
| Compromiso web/tienda | R04, R11, R03; web, tienda, proveedor, datos de clientes | Web/defacement |
| Cadena de suministro | R11, R04, R03; proveedores, integraciones, servicios gestionados | Supply chain |
| Fuga de datos personales | R03, R01, R02, R11; datos personales, CRM/ERP, servidores, proveedores | Brecha RGPD |
| Servicios cloud | R11, R03, R01, R04; cloud, almacenamiento, cuentas, integraciones | Cloud |

# Iniciar la respuesta

## Nombrar el incidente

Crear un nombre de incidente breve y trazable con el formato:

`IR-AAAA-MM-DD-[activo]-[tipo]`

Ejemplos:

* `IR-2026-05-19-correo-phishing`
* `IR-2026-05-19-erp-ransomware`
* `IR-2026-05-19-web-proveedor`

El nombre se usará en el canal de chat, llamada, expediente, evidencias, informe y AAR.

## Reunir el equipo de respuesta

1. Avisar al Incident Commander mediante {{INCIDENT_COMMANDER_PAGER_NUMBER}} o {{INCIDENT_COMMANDER_PAGER_URL}}.
2. Si el Incident Commander no responde en {{INCIDENT_COMMANDER_RESPONSE_SLA}}, tomará el mando el Adjunto o la persona capacitada disponible.
3. Abrir canal de respuesta en {{RESPONSE_CHAT}} con el nombre del incidente.
4. Abrir llamada en {{RESPONSE_PHONE}} o {{RESPONSE_VTC}}.
5. Crear expediente seguro en {{INCIDENT_FILE_LOCATION}}.
6. Evitar el correo corporativo principal si está afectado o se sospecha compromiso. Usar {{ALTERNATE_EMAIL}} como canal alternativo cuando sea necesario.
7. No usar SMS ni mensajería informal para contenido del incidente. Solo se permite para redirigir al canal oficial.
8. Invitar según severidad:
   * S1/S2: Incident Commander, Adjunto, Escriba, TIC/CISO, Legal/Cumplimiento, Comunicación, propietario del activo y Dirección.
   * S3: TIC/CISO, propietario del activo, Escriba si se abre expediente formal e Incident Commander si hay decisiones de coordinación.
   * S4: TIC/seguridad con registro y escalado si aparecen nuevos indicadores.
9. Invitar a proveedores cuando el activo afectado dependa de ellos: cloud, web/tienda, SOC/CERT, EDR, correo, backup, seguro o relaciones públicas.

## Estructura del equipo de respuesta

| Rol | Responsabilidad principal |
|---|---|
| Incident Commander | Dirige la respuesta, decide severidad, prioridades, escalado y cierre operativo. |
| Incident Commander-Adjunto | Apoya al IC, vigila tiempos, coordina tareas y asume mando si hace falta. |
| Escriba | Documenta línea temporal, evidencias, decisiones, responsables y comunicaciones. |
| Investigación | Determina vector, alcance, activos afectados, TTPs, IOCs y causa probable. |
| Remediación | Protege, detecta, contiene, erradica y prepara recuperación. |
| Comunicación | Coordina mensajes internos, externos, regulatorios y de proveedores. |
| SME | Aporta conocimiento del sistema, proceso, proveedor o unidad afectada. |
| Legal/Cumplimiento | Evalúa RGPD/LOPDGDD, contratos, evidencias, autoridades y comunicaciones. |

## Establecer el ritmo de batalla

1. Mantener llamada y chat activos durante todo el incidente S1/S2.
2. Programar actualizaciones cada {{UPDATE_FREQUENCY}} o con más frecuencia si el IC lo decide.
3. Registrar toda decisión relevante en el expediente.
4. Separar subequipos de Investigación, Remediación y Comunicación si hay suficiente personal.
5. Evitar decisiones paralelas fuera del mando del Incident Commander.

## Estructura de la llamada inicial

1. El Incident Commander abre la llamada:
   * Nombre del incidente.
   * Severidad inicial.
   * Activo afectado.
   * Resumen de hechos conocidos.
2. El Escriba toma asistencia y abre línea temporal.
3. Investigación resume:
   * Qué se ha observado.
   * Qué logs o evidencias existen.
   * Qué hipótesis iniciales se manejan.
4. Remediación resume:
   * Qué acciones de contención ya se han tomado.
   * Qué acciones requieren autorización.
   * Qué riesgos tiene actuar demasiado pronto o demasiado tarde.
5. Comunicación resume:
   * Quién debe ser informado.
   * Si hay clientes, proveedores, AEPD, INCIBE-CERT o fuerzas de seguridad que valorar.
6. El Incident Commander asigna responsables, plazos y siguiente actualización.

## Crear subequipos

En incidentes S1/S2 se crearán, si es posible, tres subequipos:

* **Investigación:** TIC/CISO, SME técnicos, SOC/CERT externo si aplica.
* **Remediación:** TIC, propietarios de sistemas, proveedor afectado, backup/cloud.
* **Comunicación:** Comunicación, Legal/Cumplimiento, Dirección, Enlace externo.

Cada subequipo debe informar al Incident Commander y registrar actividad en el expediente.

# Investigar

Investigar, remediar y comunicar deben avanzar en paralelo. Investigación no debe bloquear la contención cuando haya daño activo, pero se deben preservar evidencias antes de actuar siempre que sea viable.

## Crear el expediente del incidente

El expediente se crea en {{INCIDENT_FILE_LOCATION}} y debe contener:

* Nombre del incidente.
* Severidad inicial y cambios de severidad.
* Línea temporal con hora, acción, responsable y evidencia.
* Activos afectados.
* Usuarios, cuentas, buzones, endpoints, servidores, servicios cloud o proveedores implicados.
* Vector inicial probable.
* IOCs y TTPs identificados.
* Evidencias recogidas y cadena de custodia.
* Decisiones de contención, erradicación, recuperación y comunicación.
* Informes técnicos de proveedores.
* Copia del informe final en {{INCIDENT_REPORT_TEMPLATE}}.

## Recoger pistas iniciales

1. Entrevistar a quien reportó el incidente.
2. Identificar primer síntoma, hora, sistema, usuario y acción realizada.
3. Revisar alertas de SIEM, EDR, firewall, correo, VPN, cloud, CRM/ERP y servidores.
4. Consultar:
   * Lista de información crítica: {{CRITICAL_INFO_LIST_LOCATION}}
   * Lista de activos críticos: {{CRITICAL_ASSET_LIST_LOCATION}}
   * Inventario de activos: {{ASSET_MGMT_DB_LOCATION}}
   * Mapa de red: {{NETWORK_MAP_LOCATION}}
   * SIEM: {{SIEM_CONSOLE_LOCATION}}
   * Agregador de logs: {{LOG_AGGREGATOR_CONSOLE}}
5. Priorizar activos del PDS: CRM/ERP, servidores, datos personales, correo, backups, web/tienda, puestos, cloud y proveedores.

## Usar MITRE ATT&CK en la investigación

MITRE ATT&CK se usará para ordenar las hipótesis sobre el comportamiento del atacante. El equipo de Investigación debe identificar tácticas y técnicas observadas o probables.

| Táctica ATT&CK | Preguntas de investigación |
|---|---|
| Initial Access | ¿Entró por phishing, servicio expuesto, proveedor, VPN, credenciales o web? |
| Execution | ¿Qué se ejecutó, dónde, con qué usuario y con qué privilegios? |
| Persistence | ¿Se crearon cuentas, reglas, tareas, tokens, web shells o accesos permanentes? |
| Privilege Escalation | ¿El atacante obtuvo permisos superiores o abusó de cuentas privilegiadas? |
| Defense Evasion | ¿Se borraron logs, se desactivó EDR, se ocultaron procesos o se cambiaron permisos? |
| Credential Access | ¿Se robaron contraseñas, tokens, sesiones, cookies o credenciales guardadas? |
| Discovery | ¿Qué sistemas, usuarios, carpetas, cloud o aplicaciones consultó el atacante? |
| Lateral Movement | ¿Se movió a servidores, CRM/ERP, backups, puestos o cloud? |
| Collection | ¿Qué datos reunió antes de exfiltrar o cifrar? |
| Command and Control | ¿Hay conexiones a dominios, IPs o servicios externos controlados por atacante? |
| Exfiltration | ¿Salieron datos por web, correo, cloud, túneles, API o proveedor? |
| Impact | ¿Hubo cifrado, borrado, defacement, parada de servicio o manipulación de datos? |

Las técnicas seleccionadas deben registrarse en el expediente y, si existen, compararse con las capas de ATT&CK Navigator de `evidencias-mitre/`.

## Usar RE&CT en la respuesta

RE&CT se usará para traducir la investigación en acciones de respuesta. Para cada táctica o técnica relevante, el equipo debe seleccionar acciones de:

* **Preparation:** recursos, contactos, accesos, backups y herramientas necesarias.
* **Identification:** recogida de logs, evidencias, alertas, IOCs y alcance.
* **Containment:** aislamiento, bloqueo, revocación, segmentación y suspensión temporal.
* **Eradication:** eliminación de persistencia, malware, cuentas indebidas y configuraciones inseguras.
* **Recovery:** restauración, validación, monitorización reforzada y retorno controlado.
* **Lessons Learned:** informe, métricas, actualización de playbooks y mejora de controles.

Cada acción RE&CT aplicada debe quedar vinculada a una evidencia o decisión concreta.

## Crear y desplegar indicadores de compromiso

1. Crear IOCs desde pistas iniciales, evidencias y análisis.
2. Usar formatos estructurados cuando sea posible, como STIX, Sigma, YARA o reglas del SIEM/EDR.
3. Considerar IOCs de:
   * Red: IP, dominio, URL, puerto, user-agent, patrón DNS, conexión C2.
   * Host: hash, ruta, proceso, servicio, tarea programada, clave de registro, archivo.
   * Identidad: cuenta, token, sesión, MFA, ubicación de inicio de sesión.
   * Cloud: API key, bucket, objeto, rol, grupo, regla de compartición.
   * Comportamiento: árbol de procesos, horario anómalo, acceso masivo, descarga inusual.
4. Validar IOCs antes de desplegarlos para evitar falsos positivos.
5. Desplegar detecciones en SIEM, EDR, firewall, correo, proxy, cloud o herramienta equivalente.
6. Registrar quién crea, valida, despliega y retira cada IOC.

## Recogida de pruebas

La recogida de pruebas debe conservar integridad, trazabilidad y utilidad legal.

1. Priorizar evidencias volátiles: sesiones activas, procesos, conexiones, memoria, tokens y logs próximos a expirar.
2. Usar {{LIVE_RESPONSE_TOOL}} para respuesta en vivo cuando proceda.
3. Usar {{MEMORY_COLLECTION_TOOL}} si se requiere captura de memoria.
4. Usar {{DISK_IMAGE_TOOL}} si se requiere imagen de disco.
5. Exportar logs de SIEM, EDR, correo, VPN, firewall, CRM/ERP, servidores, cloud y proveedores.
6. Documentar cadena de custodia:
   * Qué se recoge.
   * Quién lo recoge.
   * Cuándo.
   * De dónde.
   * Hash o verificación de integridad.
   * Dónde queda almacenado.
7. No modificar sistemas comprometidos salvo que el IC autorice una acción de contención urgente.

## Artefactos prioritarios

| Escenario | Artefactos principales |
|---|---|
| Ransomware | Hashes, procesos, extensiones cifradas, notas de rescate, logs de acceso, estado de backups, conexiones SMB/RDP/VPN. |
| Phishing | Cabeceras, remitente, asunto, adjuntos, URLs, usuarios que hicieron clic, logs de correo, reglas de buzón. |
| Identidad | Logs de autenticación, MFA, sesiones, ubicaciones, cambios de permisos, creación de cuentas, tokens. |
| Web/tienda | Logs web, WAF, CMS, plugins, cambios de código, web shell, capturas, informe del proveedor. |
| Proveedor/cloud | Tickets, logs exportados, API keys, integraciones, cuentas técnicas, evidencias contractuales, SLA. |
| Brecha de datos | Ficheros, tablas, repositorios, descargas, accesos, exportaciones, destinatarios y categorías de datos. |

## Analizar pruebas

1. Correlacionar evidencias con línea temporal.
2. Confirmar vector inicial, alcance y sistemas de interés.
3. Identificar datos afectados y posible exfiltración.
4. Confirmar si existe persistencia, movimiento lateral o cuentas comprometidas.
5. Comparar técnicas observadas con MITRE ATT&CK.
6. Proponer acciones RE&CT de contención, erradicación y recuperación.
7. Actualizar severidad y plan de comunicación.

# Remediar

La remediación combina protección, detección, contención y erradicación. El Incident Commander decide el momento de las acciones considerando daño activo, preservación de evidencias, continuidad de negocio y obligaciones legales.

## Actualizar el plan de remediación

1. Revisar expediente, severidad, activos afectados y playbook aplicable.
2. Confirmar con Investigación qué técnicas ATT&CK están observadas o son probables.
3. Seleccionar acciones RE&CT adecuadas.
4. Priorizar activos críticos: CRM/ERP, servidores, correo, backups, datos personales, web/tienda, cloud y proveedores.
5. Definir responsable, plazo y criterio de éxito para cada acción.
6. Validar riesgos con Legal, Dirección y propietarios de negocio cuando pueda haber interrupción del servicio.

## Protección

Acciones para reducir probabilidad o impacto futuro:

* Parchear sistemas, aplicaciones, CMS, plugins, VPN y servicios expuestos.
* Reforzar MFA, contraseñas, mínimos privilegios y cuentas privilegiadas.
* Reducir exposición pública de servicios.
* Revisar permisos de CRM/ERP, servidores de archivos, correo y cloud.
* Validar copias de seguridad 3-2-1 y protegerlas contra borrado o cifrado.
* Actualizar EDR, antivirus, IDS/IPS, WAF y reglas de correo.
* Revisar contratos, SLA y accesos de proveedores.

## Detección

Acciones para mejorar identificación temprana:

* Crear reglas SIEM/EDR con IOCs y comportamientos observados.
* Activar alertas sobre inicios de sesión anómalos, MFA fallido, accesos desde ubicaciones inusuales y privilegios nuevos.
* Monitorizar acceso masivo a ficheros, CRM/ERP, cloud y correo.
* Añadir reglas Sigma/YARA cuando existan patrones reutilizables.
* Enviar IOCs relevantes a MISP según la política de intercambio.

## Contención

Acciones para impedir expansión o daño:

* Aislar equipos afectados de la red.
* Bloquear cuentas, revocar sesiones, rotar credenciales y retirar tokens.
* Cortar temporalmente SMB/RDP/VPN no imprescindible si hay propagación.
* Bloquear IPs, dominios, URLs, adjuntos y remitentes maliciosos.
* Suspender accesos de proveedor o integraciones afectadas.
* Poner web/tienda en modo mantenimiento si hay contenido malicioso o riesgo para clientes.
* Pausar sincronizaciones cloud si están propagando borrado, cifrado o fuga de información.

## Erradicar

Acciones para eliminar la causa:

* Eliminar malware, web shells, reglas de buzón, tareas programadas, cuentas no autorizadas y persistencia.
* Reconstruir sistemas si no se puede garantizar limpieza.
* Corregir vulnerabilidades explotadas.
* Restaurar permisos correctos.
* Validar que el proveedor afectado ha corregido la causa raíz antes de restablecer acceso.
* Confirmar que no quedan IOCs activos antes de iniciar recuperación completa.

## Elegir el momento de la remediación

* **Inmediata:** si hay cifrado, exfiltración, fraude, propagación activa, daño reputacional público o riesgo para datos personales.
* **Retrasada:** si actuar inmediatamente destruiría evidencias críticas y el daño está controlado.
* **Combinada:** contener lo imprescindible de inmediato y reservar acciones profundas hasta preservar evidencias.

# Comunicar

Toda comunicación debe ser factual, breve, coordinada y aprobada por el Incident Commander. No se comunican hipótesis como hechos.

## Comunicación interna

1. Informar a las partes interesadas según severidad.
2. Mantener a Dirección actualizada en S1/S2 con resumen ejecutivo:
   * Qué ha pasado.
   * Servicios afectados.
   * Riesgo para clientes/proveedores.
   * Decisiones necesarias.
   * Tiempo estimado de recuperación si se conoce.
3. Informar a usuarios internos solo cuando ayude a contener o recuperar.
4. No usar el correo principal si está afectado.
5. Registrar todos los mensajes relevantes en el expediente.

## Crear informe de incidente

El informe se prepara usando {{INCIDENT_REPORT_TEMPLATE}} y se distribuye a {{INCIDENT_REPORT_RECIPIENTS}} cuando el IC lo autorice. Debe incluir:

* Resumen ejecutivo.
* Severidad.
* Activos afectados.
* Línea temporal.
* Vector y causa probable.
* Técnicas MITRE ATT&CK observadas.
* Acciones RE&CT aplicadas.
* IOCs.
* Impacto funcional y de información.
* Datos personales afectados, si aplica.
* Comunicaciones realizadas.
* Estado de recuperación.
* Acciones correctivas preliminares.

## Comunicación externa

### Reguladores

Legal/Cumplimiento evalúa si procede notificar a la AEPD u otro regulador. Si existe brecha de datos personales, se debe analizar:

* Categorías de datos afectadas.
* Número estimado de personas afectadas.
* Riesgo para derechos y libertades.
* Medidas tomadas.
* Justificación de notificar o no notificar.

### Clientes

Comunicación y Legal preparan mensajes a clientes si hay impacto en servicio, datos, plazos, credenciales o confianza. El mensaje debe ser claro, factual y sin especulación.

### Proveedores y socios

Contactar con proveedores afectados o necesarios para la respuesta. Solicitar:

* Línea temporal.
* Logs y evidencias.
* Alcance.
* Medidas de contención y erradicación.
* Persona de contacto y número de caso.
* Confirmación antes de restablecer acceso.

### Fuerzas de seguridad e INCIBE-CERT

Coordinar con {{EXECUTIVE_TEAM}} y {{LEGAL_TEAM}} antes de contactar con fuerzas de seguridad. En España se valorará contactar con:

* INCIBE-CERT para apoyo, coordinación o inteligencia.
* Grupo de Delitos Telemáticos o cuerpos policiales competentes si hay fraude, extorsión, ransomware, robo de datos o delito evidente.
* {{LOCAL_LE_CONTACT}} como contacto local registrado.

### Soporte externo

Contactar con {{INCIDENT_RESPONSE_VENDOR}} si el incidente supera la capacidad interna, afecta a varios activos críticos, requiere forense especializado o tiene impacto S1/S2.

Contactar con {{PUBLIC_RELATIONS_VENDOR}} si hay exposición pública, clientes afectados o riesgo reputacional.

Contactar con {{INSURANCE_VENDOR}} si la póliza exige notificación o puede cubrir respuesta, peritaje, recuperación o comunicación.

## Compartir inteligencia con MISP

MISP se usará para compartir inteligencia de amenazas cuando el incidente genere indicadores útiles para defensa propia o de terceros de confianza.

1. Crear un evento MISP si hay IOCs, TTPs, malware, phishing, dominios, IPs, hashes, reglas YARA/Sigma o técnicas ATT&CK reutilizables.
2. Clasificar con TLP:
   * **TLP:RED:** solo equipo autorizado.
   * **TLP:AMBER:** terceros concretos implicados en defensa.
   * **TLP:GREEN:** comunidad de confianza.
   * **TLP:CLEAR:** información publicable sin riesgo.
3. No incluir datos personales, documentación fiscal, contratos, credenciales, secretos, evidencias forenses completas ni información que identifique innecesariamente a víctimas.
4. Relacionar el evento MISP con:
   * Nombre del incidente.
   * Severidad.
   * Playbook activado.
   * Técnicas MITRE ATT&CK.
   * Acciones RE&CT aplicadas.
5. Registrar en el expediente:
   * ID del evento MISP.
   * Fecha y hora.
   * TLP aplicado.
   * Comunidades o destinatarios.
   * Responsable y autorización.
6. Actualizar o retirar indicadores si se confirman falsos positivos.

# Recuperación

La recuperación debe devolver los servicios a un estado operativo seguro, no solo funcional. Debe estar coordinada por el Incident Commander con propietarios de negocio, TIC/CISO y proveedores.

## Prioridad de recuperación

1. CRM/ERP.
2. Servidores de archivos y aplicaciones.
3. Correo corporativo.
4. Copias de seguridad y repositorios de recuperación.
5. Web/tienda online.
6. Servicios cloud y proveedores.
7. Puestos de trabajo.

La prioridad puede cambiar si Legal, Dirección o el Incident Commander determinan que otro servicio reduce más el impacto sobre clientes, plazos fiscales o continuidad.

## Pasos de recuperación

1. Confirmar que la causa está contenida o erradicada.
2. Restaurar desde copias limpias y verificadas.
3. Recuperar en sistemas parcheados, monitorizados y con credenciales rotadas.
4. Validar integridad de datos con propietarios de negocio.
5. Validar RTO y RPO reales.
6. Reabrir accesos gradualmente y con mínimo privilegio.
7. Mantener monitorización reforzada al menos 72 horas en S1/S2.
8. Confirmar que no hay IOCs activos antes de cerrar recuperación.
9. Documentar pérdidas, excepciones, riesgos residuales y acciones correctivas.

## Cierre operativo

El Incident Commander puede declarar el cierre operativo cuando:

* El servicio afectado está recuperado o existe alternativa aceptada por Dirección.
* No hay propagación ni actividad maliciosa activa.
* Las evidencias principales están preservadas.
* Las comunicaciones obligatorias han sido evaluadas.
* Las acciones correctivas urgentes están asignadas.
* Se ha programado el AAR según {{AAR_SLA}}.

El cierre operativo no significa que todas las acciones estén cerradas. Las acciones pendientes pasan a seguimiento posterior en la fase de revisión.
