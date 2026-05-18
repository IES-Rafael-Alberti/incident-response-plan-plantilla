## Playbook: Phishing

**Investigar, remediar, comunicar y recuperar en paralelo.** Este playbook se activa ante correos maliciosos, suplantación, enlaces fraudulentos, adjuntos peligrosos, robo de credenciales o campañas contra empleados, clientes o proveedores.

### Relación con MITRE ATT&CK y RE&CT

Evidencias asociadas: `evidencias-mitre/attack-phishing-layer.json` y `evidencias-mitre/react-response-layer.json`.

| Fase | MITRE ATT&CK | RE&CT | Acción del playbook |
|---|---|---|---|
| Identificación | T1566.001 Spearphishing Attachment; T1566.002 Spearphishing Link | RS0002 Identification; RA2202 Collect email message; List email message receivers | Recoger mensaje, cabeceras, adjuntos, enlaces y destinatarios. |
| Contención | T1204 User Execution; T1059 Command and Scripting Interpreter | RS0003 Containment; Quarantine email message; Block external domain | Purgar mensajes, bloquear dominios/URLs y aislar equipos que ejecutaron contenido. |
| Erradicación | T1056 Input Capture; T1555.003 Credentials from Web Browsers | RS0004 Eradication; Delete email message; Remove file | Eliminar artefactos, revocar sesiones y limpiar endpoints afectados. |
| Recuperación | T1114 Email Collection; Exfiltration | RS0005 Recovery; Unlock locked user account | Restaurar cuentas legítimas tras cambio de credenciales, MFA y validación. |

### Investigar

1. Abrir expediente con nombre del incidente y conservar el mensaje original como evidencia.
2. Determinar alcance:
   * Usuarios que recibieron el mensaje.
   * Usuarios que lo abrieron, hicieron clic, descargaron adjuntos o introdujeron credenciales.
   * Buzones, grupos o clientes/proveedores a los que se pudo reenviar.
3. Analizar el mensaje en un entorno seguro:
   * Remitente visible y remitente real.
   * Cabeceras, servidores de origen, SPF/DKIM/DMARC.
   * Asunto, cuerpo, idioma, urgencia, marca suplantada y petición realizada.
   * Enlaces, dominios, adjuntos, macros, hashes y URLs acortadas.
4. Revisar logs de correo, proxy, DNS, firewall, EDR y autenticación.
5. Comprobar si hay robo de credenciales:
   * Inicios de sesión posteriores desde ubicaciones inusuales.
   * Reglas de correo, reenvíos externos o delegaciones nuevas.
   * Acceso a CRM/ERP, datos personales, cloud o servidores de archivos.
6. Categorizar el phishing:
   * Robo de credenciales.
   * Malware o ransomware por adjunto/enlace.
   * Fraude financiero o BEC.
   * Suplantación de cliente/proveedor.
   * Campaña masiva sin interacción confirmada.
7. Clasificar severidad según usuarios afectados, credenciales comprometidas, datos personales y propagación.

### Falso positivo y escalado

La alerta puede cerrarse como falso positivo si el mensaje es una comunicacion legitima, esperada y trazable, y no hay enlaces maliciosos, adjuntos peligrosos, suplantacion, robo de credenciales ni usuarios afectados.

Comprobaciones minimas:

* Revisar remitente real, cabeceras, SPF, DKIM y DMARC.
* Analizar enlaces, dominios, adjuntos, macros, hashes y URLs acortadas.
* Confirmar con el usuario o area de negocio si el mensaje era esperado.
* Comprobar si algun usuario hizo clic, descargo adjuntos o introdujo credenciales.
* Buscar mensajes similares en otros buzones.
* Revisar logs de correo, proxy, DNS, EDR y autenticacion.

Debe escalarse si hay credenciales introducidas, adjunto ejecutado, enlace malicioso visitado, varios destinatarios, suplantacion de cliente/proveedor, fraude financiero, reglas de correo creadas, inicio de sesion sospechoso, malware, ransomware o posible acceso a datos personales.

### Remediar

* **Planificar eventos de remediación** con correo, EDR, directorio, soporte y comunicaciones internas.
* **Considerar el momento**: si hay robo de credenciales o malware, contener primero; si solo hay campaña bloqueada, priorizar evidencias y prevención.

#### Contención

1. Purgar o poner en cuarentena los mensajes relacionados en todos los buzones.
2. Bloquear remitentes, dominios, URLs, hashes de adjuntos e IPs en correo, DNS, proxy y firewall.
3. Aislar equipos donde se hayan abierto adjuntos o ejecutado archivos.
4. Bloquear cuentas que introdujeron credenciales o muestran autenticación anómala.
5. Revocar sesiones activas y tokens de las cuentas afectadas.
6. Activar búsqueda retrospectiva de mensajes similares por asunto, remitente, URL, hash o plantilla.
7. Elevar severidad si se detecta malware, ransomware, exfiltración o acceso a datos personales.

#### Erradicar

1. Eliminar adjuntos, scripts, macros, instaladores o artefactos descargados.
2. Ejecutar análisis EDR/antimalware en equipos afectados.
3. Rotar contraseñas de usuarios afectados y forzar MFA.
4. Eliminar reglas de correo, reenvíos externos y aplicaciones OAuth no autorizadas.
5. Corregir controles fallidos: SPF/DKIM/DMARC, filtrado de correo, bloqueo de macros, sandboxing o formación.
6. Registrar IOCs y actualizar detecciones.

#### Referencia: Recursos de remediación

* Consola de correo, e-discovery o administración de buzones.
* SIEM, EDR, DNS, proxy y firewall.
* Directorio/IAM para bloqueo de cuentas y MFA.
* Help desk para contacto con usuarios.
* Legal y Comunicación si hay clientes, proveedores o datos personales afectados.

### Comunicar

1. Informar al Incident Commander del alcance, tipo de phishing y acciones tomadas.
2. Avisar a usuarios afectados con instrucciones: no reenviar, no borrar evidencias, no abrir enlaces, cambiar contraseña solo por canal oficial.
3. Comunicar a toda la organización si la campaña es masiva o puede seguir llegando.
4. Coordinar con Legal si se han introducido credenciales, accedido a datos personales o suplantado a clientes/proveedores.
5. Notificar a proveedores o clientes si su marca, cuentas o comunicaciones han sido usadas en la campaña.
6. Considerar comunicación a fuerzas de seguridad o CERT si hay fraude, campaña persistente o impacto relevante.

### Recuperación

1. Restaurar acceso a usuarios afectados tras rotar credenciales, revisar MFA y validar el equipo.
2. Confirmar que no quedan mensajes maliciosos en buzones ni reglas persistentes.
3. Mantener monitorización reforzada de cuentas y dominios relacionados durante al menos 72 horas.
4. Revisar si se activan otros playbooks: identidad, ransomware o fuga de datos.
5. Actualizar formación y simulaciones de phishing con indicadores observados.
6. Documentar lecciones aprendidas y mejoras de controles de correo.

### Recursos

#### Referencia: Acciones del usuario ante sospecha de phishing

1. No haga clic en enlaces ni abra adjuntos.
2. No responda al remitente ni facilite credenciales.
3. Conserve el mensaje y repórtelo por el canal de soporte o seguridad.
4. Si ya hizo clic o introdujo credenciales, avise inmediatamente y desconecte el equipo de la red si observa descargas, ventanas extrañas o ejecución de archivos.
5. Indique qué hizo, cuándo, desde qué equipo y con qué cuenta.

#### Referencia: Acciones del help desk

1. Abrir ticket con asunto, remitente, destinatario, hora, usuario reportador y acciones realizadas.
2. Escalar al equipo de seguridad si hay adjunto, enlace, credenciales, cliente/proveedor implicado o varios usuarios afectados.
3. Pedir al usuario que no borre el correo y que no siga interactuando.
4. Recoger capturas si el usuario abrió una página o adjunto.
5. Aplicar aislamiento o bloqueo de cuenta si seguridad lo solicita.

#### Información adicional

1. <a name="phishing-playbook-ref-1"></a>[MITRE ATT&CK - Phishing](https://attack.mitre.org/techniques/T1566/)
2. <a name="phishing-playbook-ref-2"></a>[MITRE ATT&CK - User Execution](https://attack.mitre.org/techniques/T1204/)
3. <a name="phishing-playbook-ref-3"></a>[RE&CT Framework](https://atc-project.github.io/atc-react/)
