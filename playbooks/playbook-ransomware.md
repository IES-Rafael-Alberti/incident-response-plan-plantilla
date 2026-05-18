## Playbook: Ransomware

**Investigar, remediar, comunicar y recuperar en paralelo.** La contención es prioritaria porque el ransomware puede propagarse a CRM/ERP, servidores de archivos, copias de seguridad y puestos de trabajo.

### Relación con MITRE ATT&CK y RE&CT

Evidencias asociadas: `evidencias-mitre/attack-ransomware-layer.json` y `evidencias-mitre/react-response-layer.json`.

| Fase | MITRE ATT&CK | RE&CT | Acción del playbook |
|---|---|---|---|
| Identificación | T1566 Phishing; T1190 Exploit Public-Facing Application; T1078 Valid Accounts | RS0002 Identification; Collect logs; List victims of security alert | Identificar vector inicial, sistemas afectados y usuarios implicados. |
| Identificación | T1059 Command and Scripting Interpreter; T1204 User Execution | RS0002 Identification; List processes executed; Acquire forensic evidence | Recoger procesos, eventos, hashes, binarios y evidencias de ejecución. |
| Contención | T1021 Remote Services; T1021.002 SMB/Windows Admin Shares | RS0003 Containment; Block internal IP address; Lock user account | Aislar equipos, cortar movimiento lateral y bloquear cuentas usadas. |
| Recuperación | T1486 Data Encrypted for Impact; T1490 Inhibit System Recovery | RS0005 Recovery; RA5002 Restore data from backup | Restaurar desde copias limpias, validar integridad y monitorizar reinfección. |

### Investigación

1. Activar severidad S1 si hay cifrado en CRM/ERP, servidores, backups, datos personales o parada de negocio.
2. Identificar la variante:
   * Nota de rescate, extensión de archivos, correo o URL de contacto.
   * Hashes de binarios, procesos, servicios, tareas programadas y rutas.
   * Herramientas usadas para cifrado, compresión, borrado o movimiento lateral.
3. Determinar alcance:
   * Puestos afectados, servidores, comparticiones, CRM/ERP, bases de datos y backups.
   * Usuarios, grupos, cuentas privilegiadas y cuentas de servicio implicadas.
   * Segmentos de red, VPN, RDP, SMB y conexiones externas.
4. Determinar datos afectados:
   * Tipos de archivo cifrados o borrados.
   * Datos personales de clientes/proveedores.
   * Información fiscal, contable o contractual.
   * Backups alcanzados, borrados o cifrados.
5. Buscar vector inicial:
   * Phishing o adjunto malicioso.
   * Credenciales válidas o VPN/RDP.
   * Vulnerabilidad expuesta en web, servidor o proveedor.
   * USB o software no autorizado.
6. Preservar evidencias antes de reconstruir:
   * Capturas de nota de rescate.
   * Logs de EDR, SIEM, correo, VPN, firewall, DNS y servidores.
   * Muestras de malware si se pueden recoger sin aumentar el riesgo.

### Falso positivo y escalado

La alerta puede cerrarse como falso positivo solo si se confirma que no hay cifrado, nota de rescate, procesos sospechosos, borrado de copias, propagacion ni actividad maliciosa. Tambien debe existir una explicacion legitima, como una prueba de backup, una herramienta de administracion, una actualizacion o un script autorizado.

Comprobaciones minimas:

* Revisar si existen archivos cifrados, extensiones nuevas o notas de rescate.
* Verificar procesos, servicios, tareas programadas y comandos recientes.
* Comprobar logs de EDR, SIEM, servidores, SMB/RDP/VPN y backup.
* Confirmar que no hay borrado de shadow copies, snapshots o repositorios de copia.
* Validar con el usuario o administrador si la actividad era esperada.
* Buscar el mismo indicador en otros equipos, servidores o comparticiones.

Debe escalarse de inmediato si hay cifrado confirmado, nota de rescate, varios equipos afectados, servidores implicados, backups tocados, cuentas privilegiadas usadas, datos personales afectados, conexion C2, borrado de copias o cualquier indicio de movimiento lateral.

### Remediar

* **Planificar eventos de remediación** con equipos preparados para cortes de red, restauración y comunicación.
* **Considerar el momento**: si el cifrado sigue activo, contener inmediatamente; si se sospecha actor persistente, preservar evidencias clave.

#### Contención

1. Aislar de red los sistemas infectados o sospechosos.
2. Cortar temporalmente SMB/RDP/VPN no imprescindible y segmentar servidores críticos.
3. Bloquear cuentas afectadas, privilegiadas o usadas en movimiento lateral.
4. Proteger copias de seguridad: desconectar repositorios, verificar inmutabilidad y evitar sobrescritura.
5. Bloquear dominios, IPs, hashes y procesos asociados.
6. Purgar correos vectoriales si el origen fue phishing.
7. Deshabilitar tareas programadas, servicios o scripts de propagación identificados.
8. Subir severidad a Dirección y Legal si hay datos personales, backups afectados o indisponibilidad de CRM/ERP.

#### Erradicar

1. Reconstruir equipos comprometidos desde imagen limpia o reinstalación controlada.
2. Eliminar malware, persistencia, cuentas creadas y herramientas del atacante.
3. Parchear vulnerabilidades explotadas y cerrar servicios expuestos innecesarios.
4. Rotar contraseñas de usuarios, administradores, cuentas de servicio y secretos.
5. Actualizar reglas EDR/antivirus, SIEM, firewall y DNS con IOCs confirmados.
6. Validar que no hay conexiones C2, procesos sospechosos ni nuevas escrituras cifradas.

#### Referencia: Recursos de remediación

* TIC/CISO, propietarios de CRM/ERP, servidores y backups.
* Herramientas EDR/antivirus, SIEM, firewall, DNS, backup y gestión de identidades.
* Soporte externo de respuesta si hay S1, múltiples sedes o impacto en datos personales.
* Legal, Comunicación y Dirección para decisiones de negocio y notificaciones.

### Comunicar

1. Informar a Dirección y Legal desde el inicio si es S1 o S2.
2. Comunicar internamente procedimientos temporales: no conectar equipos sospechosos, no restaurar sin autorización, no borrar evidencias.
3. Coordinar mensajes a clientes si hay interrupción de servicio, retrasos o posible afectación de datos.
4. Evaluar notificación a AEPD si hay brecha de datos personales.
5. Contactar con proveedor de ciberseguro y soporte externo si procede.
6. No pagar rescate como opción por defecto. Solo se evaluaría como decisión excepcional de Dirección y Legal cuando no exista alternativa técnica, teniendo en cuenta que no garantiza recuperación y puede aumentar riesgos legales y de reincidencia.

### Recuperación

1. Confirmar que la causa del compromiso está contenida antes de restaurar.
2. Priorizar recuperación:
   * CRM/ERP.
   * Servidores de archivos y aplicaciones.
   * Correo corporativo.
   * Copias críticas.
   * Puestos de trabajo esenciales.
3. Restaurar desde copias limpias, verificadas y anteriores al compromiso.
4. Recuperar en sistemas parcheados, segmentados, monitorizados y con credenciales rotadas.
5. Validar integridad de datos con propietarios de negocio.
6. Mantener monitorización reforzada al menos 72 horas y búsqueda de IOCs en toda la organización.
7. Documentar RTO/RPO real, pérdidas, excepciones y mejoras de backup 3-2-1.

### Recursos

#### Referencia: Acciones de usuarios ante sospecha de ransomware

1. Desconectar el equipo de red si observa cifrado, nota de rescate o comportamiento anómalo.
2. No apagar salvo indicación del equipo de seguridad.
3. Tomar fotos de pantalla y anotar hora, archivos afectados, acciones previas y red usada.
4. Avisar inmediatamente al help desk o equipo de seguridad.
5. No conectar discos USB ni intentar restaurar archivos por cuenta propia.

#### Referencia: Acciones del help desk

1. Abrir ticket y escalar inmediatamente como incidente de seguridad.
2. Pedir al usuario que desconecte red y no manipule evidencias.
3. Registrar equipo, usuario, ubicación, hora, síntomas, unidades afectadas y datos implicados.
4. Avisar al Incident Commander si hay más de un equipo, servidor, backup o dato personal afectado.
5. Coordinar aislamiento con TIC/CISO.

#### Información adicional

1. <a name="ransomware-playbook-ref-1"></a>[No More Ransom](https://www.nomoreransom.org/)
2. <a name="ransomware-playbook-ref-2"></a>[ID Ransomware](https://id-ransomware.malwarehunterteam.com/)
3. <a name="ransomware-playbook-ref-3"></a>[MITRE ATT&CK - Data Encrypted for Impact](https://attack.mitre.org/techniques/T1486/)
4. <a name="ransomware-playbook-ref-4"></a>[MITRE ATT&CK - Inhibit System Recovery](https://attack.mitre.org/techniques/T1490/)
5. <a name="ransomware-playbook-ref-5"></a>[RE&CT - Recovery](https://atc-project.github.io/atc-react/Response_Stages/RS0005/)
