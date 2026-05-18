## Playbook: Compromiso de servicios cloud

**Investigar, remediar, comunicar y recuperar en paralelo.** Este playbook cubre accesos no autorizados, exposición de almacenamiento, abuso de cuentas cloud, tokens/API keys, errores de configuración o indisponibilidad de servicios cloud usados por Nexo Lebrija.

### Relación con MITRE ATT&CK y RE&CT

Evidencias asociadas: `evidencias-mitre/attack-cloud-services-layer.json` y `evidencias-mitre/react-response-layer.json`.

| Fase | MITRE ATT&CK | RE&CT | Acción del playbook |
|---|---|---|---|
| Identificación | T1078.004 Cloud Accounts; T1538 Cloud Service Dashboard | RS0002 Identification; List users authenticated; Collect logs | Revisar accesos, paneles cloud, roles, cambios y sesiones. |
| Contención | T1098 Account Manipulation; T1528 Steal Application Access Token | RS0003 Containment; Lock user account; Block external IP address | Bloquear cuentas, revocar tokens y cortar orígenes sospechosos. |
| Erradicación | T1530 Data from Cloud Storage; T1567 Exfiltration Over Web Service | RS0004 Eradication; Remove malicious changes; Delete email/message/file when applicable | Eliminar configuraciones expuestas, integraciones maliciosas y permisos indebidos. |
| Recuperación | T1531 Account Access Removal; T1489 Service Stop | RS0005 Recovery; Restore data from backup; Unlock locked user account | Restaurar acceso legítimo, datos y servicio con controles reforzados. |

### Investigar

1. Identificar servicio cloud afectado: almacenamiento, correo, CRM/ERP SaaS, repositorio documental, backup cloud, panel web o herramienta colaborativa.
2. Recoger logs de:
   * Autenticación y MFA.
   * Creación o modificación de usuarios, roles, grupos y permisos.
   * Descargas, comparticiones, borrados y cambios de configuración.
   * API keys, tokens, aplicaciones OAuth e integraciones.
   * Accesos desde IPs, países o dispositivos no habituales.
3. Revisar si hay datos personales o información fiscal/contable expuesta.
4. Determinar si el incidente nace en:
   * Credenciales comprometidas.
   * Error de configuración.
   * Integración o token filtrado.
   * Proveedor cloud afectado.
   * Dispositivo de usuario comprometido.
5. Verificar dependencias: web/tienda, CRM/ERP, backups, correo o proveedor externo.
6. Clasificar severidad según datos, continuidad, privilegios y extensión.

#### Preguntas clave de la investigación

* ¿Qué servicio cloud está afectado: correo, almacenamiento, CRM/ERP SaaS, backup, colaboración, panel web o integración?
* ¿Qué cuenta, rol, grupo, token, API key, aplicación OAuth o dispositivo inició la actividad sospechosa?
* ¿Qué cambios se realizaron en permisos, comparticiones, configuraciones, usuarios, roles o integraciones?
* ¿Hay enlaces públicos, buckets/carpetas expuestas, descargas masivas o borrados anómalos?
* ¿Desde qué IPs, países, dispositivos o clientes se accedió al servicio?
* ¿El origen probable es credencial robada, error de configuración, token filtrado, proveedor cloud o endpoint comprometido?
* ¿Qué datos personales, fiscales, contables o de clientes/proveedores pudieron exponerse?
* ¿Qué procesos de negocio dependen del servicio afectado y qué impacto tendría revocar accesos o pausar integraciones?
* ¿Qué visibilidad ofrece el proveedor cloud y cuándo caducan los logs necesarios?
* ¿Qué IOCs, cuentas o patrones deben bloquearse, monitorizarse o compartirse en MISP si procede?
* ¿Es necesario activar también los playbooks de identidad, fuga de datos, phishing o cadena de suministro?

### Remediar

* **Planificar eventos de remediación** con TIC/CISO, propietarios del servicio, Legal y proveedor cloud.
* **Considerar el momento**: revocar tokens o cortar integraciones puede parar procesos de negocio; documentar riesgo y aprobación.

#### Contención

1. Bloquear cuentas sospechosas y revocar sesiones activas.
2. Revocar tokens, API keys, aplicaciones OAuth y dispositivos recordados.
3. Deshabilitar enlaces públicos y comparticiones externas no justificadas.
4. Restringir temporalmente acceso por ubicación, IP, dispositivo o grupo.
5. Pausar sincronizaciones o integraciones afectadas.
6. Activar alertas reforzadas sobre descargas masivas, cambios de permisos y nuevas apps.
7. Solicitar soporte del proveedor cloud si hay limitaciones de visibilidad o sospecha de incidente en su plataforma.

#### Erradicar

1. Eliminar roles, usuarios, reglas, apps o integraciones no autorizadas.
2. Corregir configuraciones inseguras: almacenamiento público, permisos heredados, ausencia de MFA o claves sin rotación.
3. Rotar secretos, certificados, API keys y contraseñas asociadas.
4. Revisar dispositivos de usuarios implicados y activar playbook de identidad o phishing si procede.
5. Aplicar políticas de mínimo privilegio y revisión trimestral de permisos.
6. Exportar evidencias antes de que caduquen logs del proveedor.

#### Referencia: Recursos de remediación

* Consola de administración cloud.
* Logs de auditoría, CASB si existe, SIEM, correo y directorio.
* TIC/CISO, propietario del servicio, Legal y proveedor cloud.
* Copias locales/offsite para continuidad.

### Comunicar

1. Informar al Incident Commander de servicio afectado, severidad, datos y acciones de contención.
2. Coordinar con proveedor cloud por canal oficial y registrar número de caso.
3. Escalar a Legal si hay datos personales o acceso de terceros.
4. Avisar a usuarios de cambios temporales: bloqueo de comparticiones, MFA obligatorio, revisión de permisos o indisponibilidad.
5. Preparar comunicación a clientes/proveedores si se interrumpe un servicio o se exponen datos.
6. Evaluar notificación a AEPD si procede.

### Recuperación

1. Restaurar datos borrados o modificados desde versionado o backup limpio.
2. Rehabilitar cuentas e integraciones solo tras rotar credenciales y validar permisos.
3. Validar con propietarios que el servicio funciona y los datos son íntegros.
4. Mantener monitorización reforzada durante al menos 72 horas.
5. Documentar controles nuevos: MFA, alertas, revisión de permisos, backup cloud/local y cláusulas con proveedor.
6. Actualizar inventario de servicios cloud y responsables.

### Recursos

#### Información adicional

1. <a name="cloud-playbook-ref-1"></a>[MITRE ATT&CK - Cloud Accounts](https://attack.mitre.org/techniques/T1078/004/)
2. <a name="cloud-playbook-ref-2"></a>[MITRE ATT&CK - Cloud Service Dashboard](https://attack.mitre.org/techniques/T1538/)
3. <a name="cloud-playbook-ref-3"></a>[MITRE ATT&CK - Data from Cloud Storage](https://attack.mitre.org/techniques/T1530/)
4. <a name="cloud-playbook-ref-4"></a>[MITRE ATT&CK - Account Access Removal](https://attack.mitre.org/techniques/T1531/)
5. <a name="cloud-playbook-ref-5"></a>[RE&CT Framework](https://atc-project.github.io/atc-react/)
