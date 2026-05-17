# Matriz de trazabilidad MITRE ATT&CK y RE&CT

Esta matriz documenta como se han usado MITRE ATT&CK y RE&CT para orientar el plan de respuesta a incidentes de Nexo Lebrija. El objetivo es priorizar las tecnicas y acciones relevantes para los riesgos de nuestro Plan Director de Seguridad, los activos criticos y la taxonomia de incidentes de la organizacion.

## Metodologia

1. Se parte de los activos y riesgos del PDS: CRM/ERP, servidores de archivos y aplicaciones, datos personales de clientes y proveedores, web/tienda online externalizada, correo corporativo, copias de seguridad, puestos de trabajo y servicios cloud/proveedores.
2. Se identifican los incidentes mas probables o de mayor impacto para una asesoria que trabaja con autonomos y PYMES.
3. Para cada incidente se seleccionan tacticas y tecnicas de MITRE ATT&CK que explican como podria actuar un atacante.
4. Para cada tactica o tecnica se seleccionan acciones de RE&CT que guian la respuesta: preparacion, identificacion, contencion, erradicacion, recuperacion y lecciones aprendidas.
5. La relacion resultante se usara para completar los playbooks y justificar las acciones del plan.

## Incidentes priorizados

| Playbook necesario | Riesgos PDS relacionados | Activos afectados | Justificacion |
|---|---|---|---|
| Ransomware | R01, R02, R06, R08 | CRM/ERP, servidores, backups, puestos | Es el escenario de mayor impacto sobre continuidad de negocio y ya aparece como riesgo critico en el PDS. |
| Phishing y correo malicioso | R03, R05, R08 | Correo, puestos, datos personales, credenciales | Es uno de los vectores mas probables de entrada y puede derivar en malware, fraude o robo de credenciales. |
| Compromiso de identidad y accesos | R01, R03, R05, R08 | CRM/ERP, correo, VPN, cloud, cuentas privilegiadas | Permite acceso no autorizado a sistemas criticos y datos personales, especialmente si no hay MFA o revisiones de permisos suficientes. |
| Fuga de datos personales / brecha RGPD | R03, R01, R02, R11 | Datos personales, CRM/ERP, servidores, proveedores | Tiene impacto legal, reputacional y operativo; requiere coordinacion con Legal, Comunicacion y posibles notificaciones. |
| Compromiso web/tienda online | R04, R11, R03 | Web, tienda online, proveedor externo, datos de clientes | La web/tienda esta externalizada y con bajo control interno declarado, por lo que necesita un flujo especifico con terceros. |
| Compromiso cloud / cadena de suministro | R11, R03, R04, R01 | Servicios cloud, proveedores, web, datos, CRM/ERP | La dependencia de terceros y servicios cloud exige respuesta coordinada y evidencias contractuales/SLA. |

## Trazabilidad ATT&CK -> RE&CT -> plan

| Riesgo PDS | Incidente | ATT&CK: tactica / tecnica orientativa | Que nos ayuda a preguntar ATT&CK | RE&CT: fase / accion de respuesta | Aplicacion en plan o playbook |
|---|---|---|---|---|---|
| R01, R02, R06, R08 | Ransomware | Initial Access / Phishing; Exploit Public-Facing Application; Valid Accounts | Como entro el atacante: correo, servicio expuesto, VPN o credenciales validas. | Identification / Collect logs; List victims of security alert | Revisar correo, VPN, firewall, EDR, SIEM, CRM/ERP y servidores para identificar vector y alcance. |
| R01, R02, R06, R08 | Ransomware | Execution / Command and Scripting Interpreter; User Execution | Que ejecuto el malware, en que host y con que usuario. | Identification / Acquire forensic evidence | Recoger procesos, eventos, memoria/disco si procede, hashes y binarios sospechosos. |
| R01, R02, R06, R08 | Ransomware | Lateral Movement / Remote Services; SMB/Windows Admin Shares | Como se propago a servidores, comparticiones o equipos similares. | Containment / Isolate host; Block internal IP address | Aislar hosts afectados, cortar SMB/RDP no necesario, segmentar servidores criticos. |
| R01, R02, R06, R08 | Ransomware | Impact / Data Encrypted for Impact; Inhibit System Recovery | Si se han cifrado datos o atacado backups. | Recovery / Restore data from backup | Restaurar desde copias limpias 3-2-1, validar integridad y monitorizar 72 horas. |
| R03, R05, R08 | Phishing | Initial Access / Phishing: Spearphishing Attachment; Spearphishing Link | Que usuarios recibieron el correo, quien hizo clic y que adjunto/enlace se uso. | Identification / Analyze email; List victims of security alert | Analizar cabeceras, URLs, adjuntos, buzones afectados y usuarios que interactuaron. |
| R03, R05, R08 | Phishing | Execution / User Execution | Si el usuario ejecuto adjuntos, macros, scripts o instaladores. | Containment / Delete email message; Block domain; Block external IP address | Eliminar correo de buzones, bloquear dominios/IP/URLs y adjuntos maliciosos. |
| R03, R05, R08 | Phishing | Credential Access / Credentials from Web Browsers; Input Capture | Si hubo robo de contrasenas o tokens. | Containment / Lock user account; Reset credentials | Bloquear cuentas, revocar sesiones, cambiar contrasenas y forzar MFA. |
| R03, R05, R08 | Phishing | Collection / Email Collection; Exfiltration | Si el atacante accedio a correo o datos personales. | Lessons Learned / Develop incident report | Documentar alcance, datos afectados, clientes/proveedores implicados y obligaciones RGPD. |
| R01, R03, R05, R08 | Compromiso de identidad | Credential Access / Valid Accounts; Brute Force | Que cuenta fue usada, desde donde y desde cuando. | Identification / Put compromised accounts on monitoring | Monitorizar cuentas sospechosas, revisar logs de autenticacion, VPN, correo, CRM/ERP y cloud. |
| R01, R03, R05, R08 | Compromiso de identidad | Persistence / Account Manipulation; Create Account | Si el atacante creo usuarios, reglas, permisos o persistencia. | Containment / Lock user account; Remove malicious persistence | Deshabilitar cuentas, retirar permisos, borrar reglas de correo y sesiones persistentes. |
| R01, R03, R05, R08 | Compromiso de identidad | Privilege Escalation / Abuse Elevation Control Mechanism | Si se elevaron privilegios o se abuso de cuentas admin. | Eradication / Remove rogue account; Patch misconfiguration | Eliminar cuentas no autorizadas, corregir permisos y revisar minimo privilegio. |
| R01, R03, R05, R08 | Compromiso de identidad | Discovery / Account Discovery; Cloud Service Dashboard | Que sistemas vio o intento consultar el atacante. | Identification / Collect logs; Scope incident | Revisar actividad en CRM/ERP, correo, cloud, VPN y comparticiones para delimitar alcance. |
| R03, R01, R02, R11 | Fuga de datos / RGPD | Collection / Data from Information Repositories | Que datos personales fueron accedidos o preparados. | Identification / Collect evidence; Scope incident | Identificar ficheros, tablas, repositorios, clientes y proveedores afectados. |
| R03, R01, R02, R11 | Fuga de datos / RGPD | Exfiltration / Exfiltration Over Web Service; Exfiltration Over C2 Channel | Como salieron los datos y durante cuanto tiempo. | Containment / Block external IP address; Block domain | Bloquear destinos, cortar canales de exfiltracion y preservar logs de red/proxy/firewall. |
| R03, R01, R02, R11 | Fuga de datos / RGPD | Defense Evasion / Clear Windows Event Logs; File and Directory Permissions Modification | Si el atacante intento ocultar actividad o cambiar permisos. | Eradication / Restore permissions; Remove malicious changes | Restaurar permisos, revisar auditoria y conservar evidencias de manipulacion. |
| R03, R01, R02, R11 | Fuga de datos / RGPD | Impact / Data Manipulation | Si los datos fueron modificados, borrados o alterados. | Recovery / Restore data from backup; Validate restored data | Restaurar datos si procede y validar integridad con propietarios de negocio. |
| R04, R11, R03 | Web/tienda comprometida | Initial Access / Exploit Public-Facing Application | Que vulnerabilidad, panel o proveedor permitio el acceso. | Identification / List host vulnerabilities; Collect web logs | Revisar logs web, WAF, CMS, panel de proveedor, cambios de codigo y vulnerabilidades. |
| R04, R11, R03 | Web/tienda comprometida | Persistence / Web Shell; Server Software Component | Si se dejo una web shell, plugin o puerta trasera. | Eradication / Remove malicious file; Patch vulnerability | Eliminar web shell, actualizar CMS/plugins, rotar credenciales y revisar integridad. |
| R04, R11, R03 | Web/tienda comprometida | Impact / Defacement; Service Stop | Si la web fue alterada o dejo de prestar servicio. | Containment / Redirect traffic; Recovery / Restore service | Activar pagina de mantenimiento, restaurar contenido limpio y validar con proveedor. |
| R04, R11, R03 | Web/tienda comprometida | Exfiltration / Exfiltration Over Web Service | Si se capturaron formularios, clientes o pedidos. | Lessons Learned / Develop incident report; Report incident to external companies | Coordinar con Legal, proveedor y Comunicacion; evaluar notificacion a clientes/AEPD. |
| R11, R03, R04, R01 | Cloud / cadena de suministro | Initial Access / Trusted Relationship; Valid Accounts | Que proveedor o integracion fue usado como via de entrada. | Identification / Contact external company; Collect logs | Activar canal con proveedor, solicitar logs, tiempos, alcance y medidas adoptadas. |
| R11, R03, R04, R01 | Cloud / cadena de suministro | Persistence / Account Manipulation; Cloud Account | Si hubo cambios en cuentas, tokens, permisos o integraciones. | Containment / Revoke token; Lock account | Revocar tokens/API keys, bloquear cuentas y cortar integraciones afectadas. |
| R11, R03, R04, R01 | Cloud / cadena de suministro | Collection / Data from Cloud Storage | Si se accedio a datos corporativos o personales en cloud. | Identification / Scope incident; Collect evidence | Inventariar carpetas, buckets, repositorios, usuarios y datos afectados. |
| R11, R03, R04, R01 | Cloud / cadena de suministro | Impact / Account Access Removal; Service Stop | Si el proveedor provoca perdida de servicio o bloqueo de acceso. | Recovery / Switch to alternate service; Restore data from backup | Activar continuidad, copias locales/offsite y proveedor alternativo si esta previsto. |

## Referencias

* MITRE ATT&CK: https://attack.mitre.org/
* MITRE ATT&CK Navigator: https://mitre-attack.github.io/attack-navigator/
* Proyecto ATT&CK Navigator: https://github.com/mitre-attack/attack-navigator
* RE&CT Framework: https://atc-project.github.io/atc-react/
