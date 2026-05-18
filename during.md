# Plan de respuesta a incidentes para {{COMPANY_NAME}}

Autor: {{AUTHOR_NAME}}, {{AUTHOR_EMAIL}}

Revision {{REVISION_NUMBER}}, publicado {{RELEASE_DATE}}

Este documento indica como actuar durante un incidente de ciberseguridad en {{COMPANY_NAME}}. Esta adaptado al Plan Director de Seguridad, a los activos criticos identificados y a los incidentes mas probables para una asesoria que presta servicios a autonomos y PYMES.

Ultima revision: {{REVIEW_DATE}}. Ultima prueba: {{TEST_DATE}}.

El objetivo es responder rapido, con orden y con continuidad de negocio siempre que sea posible. Tambien se busca reducir el impacto legal, operativo y reputacional.

# Evaluar

1. Mantener la calma y trabajar con hechos.
2. Recoger la informacion inicial: alerta, usuario afectado, sistema, hora, sintoma, activo implicado, posible vector y evidencias disponibles.
3. Confirmar si hay impacto sobre confidencialidad, integridad o disponibilidad.
4. Clasificar la severidad inicial.
5. Activar el equipo de respuesta si el incidente se confirma o si hay sospecha razonable.

## Activos criticos del PDS

Durante la evaluacion se debe comprobar si el incidente afecta a algun activo priorizado en el Plan Director de Seguridad.

| Activo | Motivo de criticidad |
|---|---|
| CRM/ERP | Soporta gestion de clientes, fiscalidad, facturacion y operaciones principales. |
| Servidores de archivos y aplicaciones | Contienen documentacion contable, fiscal y operativa. |
| Datos personales de clientes, proveedores y empleados | Tienen impacto RGPD/LOPDGDD, reputacional y contractual. |
| Correo corporativo | Es un vector habitual de phishing, fraude, suplantacion y fuga de informacion. |
| Pagina web y tienda online externalizada | Afecta a reputacion, disponibilidad y dependencia de proveedor. |
| Copias de seguridad | Son la base de la recuperacion ante ransomware, borrado o corrupcion de datos. |
| Puestos de trabajo | Son un punto frecuente de entrada por phishing, malware o credenciales robadas. |
| Servicios cloud y proveedores | Aportan riesgo por dependencia, acceso externo, mala configuracion y cadena de suministro. |

## Impacto funcional

Valorar como afecta el incidente a la operacion de la empresa.

* **Alto:** parada de CRM/ERP, servidor de archivos, correo, web/tienda, backups o varios puestos. Puede afectar a plazos fiscales, atencion a clientes o continuidad de negocio.
* **Medio:** degradacion de un servicio o afectacion parcial a un departamento, con alternativas temporales.
* **Bajo:** incidente localizado sin interrupcion relevante.
* **Sin impacto funcional:** tratar como evento de seguridad o ticket ordinario, salvo que haya riesgo sobre datos o credenciales.

## Impacto sobre la informacion

Valorar si se ha producido o podria producirse alguno de estos hechos:

* Acceso no autorizado a datos personales, fiscales, contables, contractuales o credenciales.
* Exfiltracion, publicacion, modificacion, cifrado o borrado de informacion.
* Uso indebido de cuentas corporativas, correo, CRM/ERP, cloud o accesos de proveedor.
* Perdida de trazabilidad, logs o evidencias.

Si hay datos personales afectados, avisar desde el inicio a Legal/Cumplimiento para valorar obligaciones RGPD/LOPDGDD y posible notificacion a la AEPD.

## Severidad

La severidad se revisa durante todo el incidente. Si aparecen nuevos hechos, el Incident Commander puede subir o bajar la clasificacion.

| Severidad | Criterios | Escalado minimo |
|---|---|---|
| **S1 Critico** | Parada de negocio, ransomware activo, afectacion a CRM/ERP o backups, fuga masiva de datos personales, compromiso de cuenta privilegiada, proveedor critico comprometido o exposicion publica grave. | Incident Commander, Direccion, TIC/CISO, Legal/Cumplimiento, Comunicacion y proveedor/SOC externo si aplica. |
| **S2 Alto** | Afectacion a sistemas criticos sin parada total, acceso no autorizado probable, phishing con credenciales usadas, malware contenido, brecha limitada o incidente en proveedor con impacto relevante. | Incident Commander, TIC/CISO, propietario del servicio, Legal si hay datos personales y Comunicacion si hay terceros. |
| **S3 Medio** | Incidente confirmado pero localizado: una cuenta, un equipo, un buzon o servicio no critico, sin evidencias de exfiltracion ni propagacion. | TIC/CISO, propietario del activo e Incident Commander si requiere coordinacion. |
| **S4 Bajo** | Intento bloqueado, falso positivo razonable o evento menor sin acceso confirmado ni impacto. | TIC/seguridad, con registro y seguimiento. |

## Playbook aplicable

Escoger el playbook mas cercano al escenario observado. Si el incidente encaja en varios escenarios, activar el principal y usar los demas como apoyo.

| Escenario | Activos/Riesgos PDS | Playbook o linea de respuesta |
|---|---|---|
| Ransomware | R01, R02, R06, R08; CRM/ERP, servidores, backups, puestos | Ransomware |
| Phishing y correo malicioso | R03, R05, R08; correo, credenciales, datos personales | Phishing |
| Compromiso de identidad y acceso | R01, R03, R05, R08; cuentas, VPN, correo, CRM/ERP, cloud | Identidad y acceso |
| Compromiso web/tienda | R04, R11, R03; web, tienda, proveedor, datos de clientes | Web/defacement |
| Cadena de suministro | R11, R04, R03; proveedores, integraciones, servicios gestionados | Supply chain |
| Fuga de datos personales | R03, R01, R02, R11; datos personales, CRM/ERP, servidores, proveedores | Brecha RGPD |
| Servicios cloud | R11, R03, R01, R04; cloud, almacenamiento, cuentas, integraciones | Cloud |

# Iniciar la respuesta

## Nombre del incidente

Crear un nombre breve y trazable con este formato:

`IR-AAAA-MM-DD-[activo]-[tipo]`

Ejemplos:

* `IR-2026-05-19-correo-phishing`
* `IR-2026-05-19-erp-ransomware`
* `IR-2026-05-19-web-proveedor`

El nombre se usara en el chat, la llamada, el expediente, las evidencias, el informe y el AAR.

## Equipo de respuesta

1. Avisar al Incident Commander mediante {{INCIDENT_COMMANDER_PAGER_NUMBER}} o {{INCIDENT_COMMANDER_PAGER_URL}}.
2. Si no responde en {{INCIDENT_COMMANDER_RESPONSE_SLA}}, asumira el mando el adjunto o la persona capacitada disponible.
3. Abrir canal de respuesta en {{RESPONSE_CHAT}} con el nombre del incidente.
4. Abrir llamada en {{RESPONSE_PHONE}} o {{RESPONSE_VTC}}.
5. Crear expediente seguro en {{INCIDENT_FILE_LOCATION}}.
6. Evitar el correo corporativo principal si esta afectado o se sospecha compromiso. Usar {{ALTERNATE_EMAIL}} cuando sea necesario.
7. No usar SMS ni mensajeria informal para contenido del incidente. Solo se permite para redirigir al canal oficial.
8. Invitar segun severidad:
   * S1/S2: Incident Commander, adjunto, escriba, TIC/CISO, Legal/Cumplimiento, Comunicacion, propietario del activo y Direccion.
   * S3: TIC/CISO, propietario del activo, escriba si se abre expediente formal e Incident Commander si hay decisiones de coordinacion.
   * S4: TIC/seguridad, con registro y escalado si aparecen nuevos indicadores.
9. Invitar a proveedores cuando el activo afectado dependa de ellos: cloud, web/tienda, SOC/CERT, EDR, correo, backup, seguro o relaciones publicas.

## Roles

| Rol | Responsabilidad principal |
|---|---|
| Incident Commander | Dirige la respuesta, decide severidad, prioridades, escalado y cierre. |
| Incident Commander-Adjunto | Apoya al IC, controla tiempos, coordina tareas y asume el mando si hace falta. |
| Escriba | Documenta linea temporal, evidencias, decisiones, responsables y comunicaciones. |
| Investigacion | Determina vector, alcance, activos afectados, TTPs, IOCs y causa probable. |
| Remediacion | Protege, detecta, contiene, erradica y prepara la recuperacion. |
| Comunicacion | Coordina mensajes internos, externos, regulatorios y de proveedores. |
| SME | Aporta conocimiento del sistema, proceso, proveedor o unidad afectada. |
| Legal/Cumplimiento | Evalua RGPD/LOPDGDD, contratos, evidencias, autoridades y comunicaciones. |

## Ritmo de trabajo

1. Mantener llamada y chat activos durante todo incidente S1/S2.
2. Programar actualizaciones cada {{UPDATE_FREQUENCY}} o antes si el IC lo decide.
3. Registrar toda decision relevante en el expediente.
4. Separar equipos de Investigacion, Remediacion y Comunicacion si hay personal suficiente.
5. Evitar decisiones paralelas fuera del mando del Incident Commander.

## Llamada inicial

1. El Incident Commander abre la llamada con:
   * Nombre del incidente.
   * Severidad inicial.
   * Activo afectado.
   * Resumen de hechos conocidos.
2. El Escriba toma asistencia y abre la linea temporal.
3. Investigacion resume:
   * Que se ha observado.
   * Que logs o evidencias existen.
   * Que hipotesis iniciales se manejan.
4. Remediacion resume:
   * Que acciones de contencion ya se han tomado.
   * Que acciones requieren autorizacion.
   * Que riesgos tiene actuar demasiado pronto o demasiado tarde.
5. Comunicacion resume:
   * Quien debe ser informado.
   * Si hay clientes, proveedores, AEPD, INCIBE-CERT o fuerzas de seguridad que valorar.
6. El Incident Commander asigna responsables, plazos y siguiente actualizacion.

## Subequipos

En incidentes S1/S2 se crearan, si es posible, tres subequipos:

* **Investigacion:** TIC/CISO, SME tecnicos, SOC/CERT externo si aplica.
* **Remediacion:** TIC, propietarios de sistemas, proveedor afectado, backup/cloud.
* **Comunicacion:** Comunicacion, Legal/Cumplimiento, Direccion, enlace externo.

Cada subequipo informa al Incident Commander y registra su actividad en el expediente.

# Investigar

Investigacion, remediacion y comunicacion deben avanzar a la vez. La investigacion no debe bloquear la contencion cuando haya dano activo. Siempre que sea viable, se preservan evidencias antes de actuar.

## Expediente del incidente

El expediente se crea en {{INCIDENT_FILE_LOCATION}} y debe contener:

* Nombre del incidente.
* Severidad inicial y cambios posteriores.
* Linea temporal con hora, accion, responsable y evidencia.
* Activos afectados.
* Usuarios, cuentas, buzones, endpoints, servidores, servicios cloud o proveedores implicados.
* Vector inicial probable.
* IOCs y TTPs identificados.
* Evidencias recogidas y cadena de custodia.
* Decisiones de contencion, erradicacion, recuperacion y comunicacion.
* Informes tecnicos de proveedores.
* Copia del informe final en {{INCIDENT_REPORT_TEMPLATE}}.

## Primeras pistas

1. Entrevistar a quien reporto el incidente.
2. Identificar primer sintoma, hora, sistema, usuario y accion realizada.
3. Revisar alertas de SIEM, EDR, firewall, correo, VPN, cloud, CRM/ERP y servidores.
4. Consultar:
   * Lista de informacion critica: {{CRITICAL_INFO_LIST_LOCATION}}
   * Lista de activos criticos: {{CRITICAL_ASSET_LIST_LOCATION}}
   * Inventario de activos: {{ASSET_MGMT_DB_LOCATION}}
   * Mapa de red: {{NETWORK_MAP_LOCATION}}
   * SIEM: {{SIEM_CONSOLE_LOCATION}}
   * Agregador de logs: {{LOG_AGGREGATOR_CONSOLE}}
5. Priorizar activos del PDS: CRM/ERP, servidores, datos personales, correo, backups, web/tienda, puestos, cloud y proveedores.

## MITRE ATT&CK en la investigacion

MITRE ATT&CK se usa para ordenar hipotesis sobre el comportamiento del atacante. El equipo de Investigacion debe identificar tacticas y tecnicas observadas o probables.

| Tactica ATT&CK | Preguntas de investigacion |
|---|---|
| Initial Access | Entro por phishing, servicio expuesto, proveedor, VPN, credenciales o web? |
| Execution | Que se ejecuto, donde, con que usuario y con que privilegios? |
| Persistence | Se crearon cuentas, reglas, tareas, tokens, web shells o accesos permanentes? |
| Privilege Escalation | El atacante obtuvo permisos superiores o abuso de cuentas privilegiadas? |
| Defense Evasion | Se borraron logs, se desactivo EDR, se ocultaron procesos o se cambiaron permisos? |
| Credential Access | Se robaron contrasenas, tokens, sesiones, cookies o credenciales guardadas? |
| Discovery | Que sistemas, usuarios, carpetas, cloud o aplicaciones consulto el atacante? |
| Lateral Movement | Se movio a servidores, CRM/ERP, backups, puestos o cloud? |
| Collection | Que datos reunio antes de exfiltrar o cifrar? |
| Command and Control | Hay conexiones a dominios, IPs o servicios externos controlados por el atacante? |
| Exfiltration | Salieron datos por web, correo, cloud, tuneles, API o proveedor? |
| Impact | Hubo cifrado, borrado, defacement, parada de servicio o manipulacion de datos? |

Las tecnicas seleccionadas se registran en el expediente y se comparan, si existen, con las capas de ATT&CK Navigator de `evidencias-mitre/`.

## RE&CT en la respuesta

RE&CT se usa para convertir la investigacion en acciones. Para cada tactica o tecnica relevante, el equipo selecciona acciones de:

* **Preparation:** recursos, contactos, accesos, backups y herramientas necesarias.
* **Identification:** recogida de logs, evidencias, alertas, IOCs y alcance.
* **Containment:** aislamiento, bloqueo, revocacion, segmentacion y suspension temporal.
* **Eradication:** eliminacion de persistencia, malware, cuentas indebidas y configuraciones inseguras.
* **Recovery:** restauracion, validacion, monitorizacion reforzada y retorno controlado.
* **Lessons Learned:** informe, metricas, actualizacion de playbooks y mejora de controles.

Cada accion RE&CT aplicada debe quedar vinculada a una evidencia o decision concreta.

## Indicadores de compromiso

1. Crear IOCs desde las primeras pistas, evidencias y analisis.
2. Usar formatos estructurados cuando sea posible: STIX, Sigma, YARA o reglas del SIEM/EDR.
3. Considerar IOCs de:
   * Red: IP, dominio, URL, puerto, user-agent, patron DNS, conexion C2.
   * Host: hash, ruta, proceso, servicio, tarea programada, clave de registro, archivo.
   * Identidad: cuenta, token, sesion, MFA, ubicacion de inicio de sesion.
   * Cloud: API key, bucket, objeto, rol, grupo, regla de comparticion.
   * Comportamiento: arbol de procesos, horario anomalo, acceso masivo, descarga inusual.
4. Validar IOCs antes de desplegarlos para evitar falsos positivos.
5. Desplegar detecciones en SIEM, EDR, firewall, correo, proxy, cloud o herramienta equivalente.
6. Registrar quien crea, valida, despliega y retira cada IOC.

## Pruebas

La recogida de pruebas debe conservar integridad, trazabilidad y utilidad legal.

1. Priorizar evidencias volatiles: sesiones activas, procesos, conexiones, memoria, tokens y logs proximos a expirar.
2. Usar {{LIVE_RESPONSE_TOOL}} para respuesta en vivo cuando proceda.
3. Usar {{MEMORY_COLLECTION_TOOL}} si se requiere captura de memoria.
4. Usar {{DISK_IMAGE_TOOL}} si se requiere imagen de disco.
5. Exportar logs de SIEM, EDR, correo, VPN, firewall, CRM/ERP, servidores, cloud y proveedores.
6. Documentar cadena de custodia:
   * Que se recoge.
   * Quien lo recoge.
   * Cuando.
   * De donde.
   * Hash o verificacion de integridad.
   * Donde queda almacenado.
7. No modificar sistemas comprometidos salvo que el IC autorice una contencion urgente.

## Artefactos prioritarios

| Escenario | Artefactos principales |
|---|---|
| Ransomware | Hashes, procesos, extensiones cifradas, notas de rescate, logs de acceso, estado de backups, conexiones SMB/RDP/VPN. |
| Phishing | Cabeceras, remitente, asunto, adjuntos, URLs, usuarios que hicieron clic, logs de correo, reglas de buzon. |
| Identidad | Logs de autenticacion, MFA, sesiones, ubicaciones, cambios de permisos, creacion de cuentas, tokens. |
| Web/tienda | Logs web, WAF, CMS, plugins, cambios de codigo, web shell, capturas, informe del proveedor. |
| Proveedor/cloud | Tickets, logs exportados, API keys, integraciones, cuentas tecnicas, evidencias contractuales, SLA. |
| Brecha de datos | Ficheros, tablas, repositorios, descargas, accesos, exportaciones, destinatarios y categorias de datos. |

## Analisis

1. Correlacionar evidencias con la linea temporal.
2. Confirmar vector inicial, alcance y sistemas de interes.
3. Identificar datos afectados y posible exfiltracion.
4. Confirmar si existe persistencia, movimiento lateral o cuentas comprometidas.
5. Comparar tecnicas observadas con MITRE ATT&CK.
6. Proponer acciones RE&CT de contencion, erradicacion y recuperacion.
7. Actualizar severidad y plan de comunicacion.

# Remediar

La remediacion combina proteccion, deteccion, contencion y erradicacion. El Incident Commander decide el momento de las acciones teniendo en cuenta dano activo, preservacion de evidencias, continuidad de negocio y obligaciones legales.

## Plan de remediacion

1. Revisar expediente, severidad, activos afectados y playbook aplicable.
2. Confirmar con Investigacion que tecnicas ATT&CK estan observadas o son probables.
3. Seleccionar acciones RE&CT adecuadas.
4. Priorizar activos criticos: CRM/ERP, servidores, correo, backups, datos personales, web/tienda, cloud y proveedores.
5. Definir responsable, plazo y criterio de exito para cada accion.
6. Validar riesgos con Legal, Direccion y propietarios de negocio cuando pueda haber interrupcion del servicio.

## Proteccion

Acciones para reducir probabilidad o impacto futuro:

* Parchear sistemas, aplicaciones, CMS, plugins, VPN y servicios expuestos.
* Reforzar MFA, contrasenas, minimos privilegios y cuentas privilegiadas.
* Reducir exposicion publica de servicios.
* Revisar permisos de CRM/ERP, servidores de archivos, correo y cloud.
* Validar copias de seguridad 3-2-1 y protegerlas contra borrado o cifrado.
* Actualizar EDR, antivirus, IDS/IPS, WAF y reglas de correo.
* Revisar contratos, SLA y accesos de proveedores.

## Deteccion

Acciones para mejorar la identificacion temprana:

* Crear reglas SIEM/EDR con IOCs y comportamientos observados.
* Activar alertas sobre inicios de sesion anomalos, MFA fallido, accesos desde ubicaciones inusuales y privilegios nuevos.
* Monitorizar acceso masivo a ficheros, CRM/ERP, cloud y correo.
* Anadir reglas Sigma/YARA cuando existan patrones reutilizables.
* Enviar IOCs relevantes a MISP segun la politica de intercambio.

## Contencion

Acciones para impedir expansion o dano:

* Aislar equipos afectados de la red.
* Bloquear cuentas, revocar sesiones, rotar credenciales y retirar tokens.
* Cortar temporalmente SMB/RDP/VPN no imprescindible si hay propagacion.
* Bloquear IPs, dominios, URLs, adjuntos y remitentes maliciosos.
* Suspender accesos de proveedor o integraciones afectadas.
* Poner web/tienda en modo mantenimiento si hay contenido malicioso o riesgo para clientes.
* Pausar sincronizaciones cloud si estan propagando borrado, cifrado o fuga de informacion.

## Erradicacion

Acciones para eliminar la causa:

* Eliminar malware, web shells, reglas de buzon, tareas programadas, cuentas no autorizadas y persistencia.
* Reconstruir sistemas si no se puede garantizar la limpieza.
* Corregir vulnerabilidades explotadas.
* Restaurar permisos correctos.
* Validar que el proveedor afectado ha corregido la causa raiz antes de restablecer acceso.
* Confirmar que no quedan IOCs activos antes de iniciar la recuperacion completa.

## Momento de remediar

* **Inmediata:** si hay cifrado, exfiltracion, fraude, propagacion activa, dano reputacional publico o riesgo para datos personales.
* **Retrasada:** si actuar inmediatamente destruiria evidencias criticas y el daño esta controlado.
* **Combinada:** contener lo imprescindible de inmediato y reservar acciones profundas hasta preservar evidencias.

# Comunicar

Toda comunicacion debe ser basada en hechos, breve, coordinada y aprobada por el Incident Commander. No se comunican hipotesis como hechos.

## Comunicacion interna

1. Informar a las partes interesadas segun severidad.
2. Mantener a Direccion actualizada en S1/S2 con resumen ejecutivo:
   * Que ha pasado.
   * Servicios afectados.
   * Riesgo para clientes/proveedores.
   * Decisiones necesarias.
   * Tiempo estimado de recuperacion si se conoce.
3. Informar a usuarios internos solo cuando ayude a contener o recuperar.
4. No usar el correo principal si esta afectado.
5. Registrar todos los mensajes relevantes en el expediente.

## Informe de incidente

El informe se prepara usando {{INCIDENT_REPORT_TEMPLATE}} y se distribuye a {{INCIDENT_REPORT_RECIPIENTS}} cuando el IC lo autorice. Debe incluir:

* Resumen ejecutivo.
* Severidad.
* Activos afectados.
* Linea temporal.
* Vector y causa probable.
* Tecnicas MITRE ATT&CK observadas.
* Acciones RE&CT aplicadas.
* IOCs.
* Impacto funcional y de informacion.
* Datos personales afectados, si aplica.
* Comunicaciones realizadas.
* Estado de recuperacion.
* Acciones correctivas preliminares.

## Comunicacion externa

### Reguladores

Legal/Cumplimiento evalua si procede notificar a la AEPD u otro regulador. Si existe brecha de datos personales, se debe analizar:

* Categorias de datos afectadas.
* Numero estimado de personas afectadas.
* Riesgo para derechos y libertades.
* Medidas tomadas.
* Justificacion de notificar o no notificar.

### Clientes

Comunicacion y Legal preparan mensajes a clientes si hay impacto en servicio, datos, plazos, credenciales o confianza. El mensaje debe ser claro, factual y sin especulacion.

### Proveedores y socios

Contactar con proveedores afectados o necesarios para la respuesta. Solicitar:

* Linea temporal.
* Logs y evidencias.
* Alcance.
* Medidas de contencion y erradicacion.
* Persona de contacto y numero de caso.
* Confirmacion antes de restablecer acceso.

### Fuerzas de seguridad e INCIBE-CERT

Coordinar con {{EXECUTIVE_TEAM}} y {{LEGAL_TEAM}} antes de contactar con fuerzas de seguridad. En Espana se valorara contactar con:

* INCIBE-CERT para apoyo, coordinacion o inteligencia.
* Grupo de Delitos Telematicos o cuerpos policiales competentes si hay fraude, extorsion, ransomware, robo de datos o delito evidente.
* {{LOCAL_LE_CONTACT}} como contacto local registrado.

### Soporte externo

Contactar con {{INCIDENT_RESPONSE_VENDOR}} si el incidente supera la capacidad interna, afecta a varios activos criticos, requiere forense especializado o tiene impacto S1/S2.

Contactar con {{PUBLIC_RELATIONS_VENDOR}} si hay exposicion publica, clientes afectados o riesgo reputacional.

Contactar con {{INSURANCE_VENDOR}} si la poliza exige notificacion o puede cubrir respuesta, peritaje, recuperacion o comunicacion.

## MISP

MISP se usa para compartir inteligencia de amenazas cuando el incidente genera indicadores utiles para la defensa propia o de terceros de confianza.

1. Crear un evento MISP si hay IOCs, TTPs, malware, phishing, dominios, IPs, hashes, reglas YARA/Sigma o tecnicas ATT&CK reutilizables.
2. Clasificar con TLP:
   * **TLP:RED:** solo equipo autorizado.
   * **TLP:AMBER:** terceros concretos implicados en defensa.
   * **TLP:GREEN:** comunidad de confianza.
   * **TLP:CLEAR:** informacion publicable sin riesgo.
3. No incluir datos personales, documentacion fiscal, contratos, credenciales, secretos, evidencias forenses completas ni informacion que identifique innecesariamente a victimas.
4. Relacionar el evento MISP con:
   * Nombre del incidente.
   * Severidad.
   * Playbook activado.
   * Tecnicas MITRE ATT&CK.
   * Acciones RE&CT aplicadas.
5. Registrar en el expediente:
   * ID del evento MISP.
   * Fecha y hora.
   * TLP aplicado.
   * Comunidades o destinatarios.
   * Responsable y autorizacion.
6. Actualizar o retirar indicadores si se confirman falsos positivos.

# Recuperacion

La recuperacion debe devolver los servicios a un estado seguro, no solo funcional. Debe estar coordinada por el Incident Commander con propietarios de negocio, TIC/CISO y proveedores.

## Prioridad de recuperacion

1. CRM/ERP.
2. Servidores de archivos y aplicaciones.
3. Correo corporativo.
4. Copias de seguridad y repositorios de recuperacion.
5. Web/tienda online.
6. Servicios cloud y proveedores.
7. Puestos de trabajo.

La prioridad puede cambiar si Legal, Direccion o el Incident Commander determinan que otro servicio reduce mas el impacto sobre clientes, plazos fiscales o continuidad.

## Pasos de recuperacion

1. Confirmar que la causa esta contenida o erradicada.
2. Restaurar desde copias limpias y verificadas.
3. Recuperar en sistemas parcheados, monitorizados y con credenciales rotadas.
4. Validar integridad de datos con propietarios de negocio.
5. Validar RTO y RPO reales.
6. Reabrir accesos gradualmente y con minimo privilegio.
7. Mantener monitorizacion reforzada al menos 72 horas en S1/S2.
8. Confirmar que no hay IOCs activos antes de cerrar la recuperacion.
9. Documentar perdidas, excepciones, riesgos residuales y acciones correctivas.

## Cierre

El Incident Commander puede declarar el cierre cuando:

* El servicio afectado esta recuperado o existe una alternativa aceptada por Direccion.
* No hay propagacion ni actividad maliciosa activa.
* Las evidencias principales estan preservadas.
* Las comunicaciones obligatorias han sido evaluadas.
* Las acciones correctivas urgentes estan asignadas.
* Se ha programado el AAR segun {{AAR_SLA}}.

El cierre no significa que todas las acciones esten terminadas. Las acciones pendientes pasan a seguimiento posterior en la fase de revision.
