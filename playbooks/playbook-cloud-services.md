## Playbook: Compromiso de servicios cloud

**Investigar, remediar, comunicar y recuperar en paralelo.** Este playbook cubre accesos no autorizados, exposiciÃ³n de almacenamiento, abuso de cuentas, tokens/API keys, errores de configuraciÃ³n o indisponibilidad de servicios cloud usados por Nexo Lebrija.

### MITRE ATT&CK y RE&CT

Para entender la relaciÃ³n de este playbook con las matrices att&ck y re&ct, se aporta esta tabla.

Evidencias asociadas: `evidencias-mitre/attack-cloud-services-layer.json` y `evidencias-mitre/react-response-layer.json`.

| Fase | MITRE ATT&CK | RE&CT | AcciÃ³n del playbook |
|---|---|---|---|
| IdentificaciÃ³n | T1078.004 Cloud Accounts; T1538 Cloud Service Dashboard | RS0002 Identification; List users authenticated; Collect logs | Revisar accesos, paneles cloud, roles, cambios y sesiones. |
| ContenciÃ³n | T1098 Account Manipulation; T1528 Steal Application Access Token | RS0003 Containment; Lock user account; Block external IP address | Bloquear cuentas, revocar tokens y cortar orÃ­genes sospechosos. |
| ErradicaciÃ³n | T1530 Data from Cloud Storage; T1567 Exfiltration Over Web Service | RS0004 Eradication; Remove malicious changes; Delete email/message/file when applicable | Eliminar configuraciones expuestas, integraciones maliciosas y permisos indebidos. |
| RecuperaciÃ³n | T1531 Account Access Removal; T1489 Service Stop | RS0005 Recovery; Restore data from backup; Unlock locked user account | Restaurar acceso legÃ­timo, datos y servicio con controles reforzados. |

## PROCEDIMIENTO

### Investigar

1. Identificar servicio cloud afectado: almacenamiento, correo, CRM/ERP, repositorio documental, backup cloud o panel web.
2. Recoger logs de:
   * AutenticaciÃ³n y MFA.
   * CreaciÃ³n o modificaciÃ³n de usuarios, roles, grupos y permisos.
   * Descargas, comparticiones, borrados y cambios de configuraciÃ³n.
   * API keys, tokens, aplicaciones OAuth e integraciones.
   * Accesos desde IPs, paÃ­ses o dispositivos no habituales.
3. Revisar si hay datos personales o informaciÃ³n fiscal/contable expuesta.
4. Determinar si el incidente nace en:
   * Credenciales comprometidas.
   * Error de configuraciÃ³n.
   * IntegraciÃ³n o token filtrado.
   * Proveedor cloud afectado.
   * Dispositivo de usuario comprometido.
6. Clasificar severidad segÃºn datos, continuidad, privilegios y extensiÃ³n.

### Falso positivo y escalado

La alerta puede cerrarse como falso positivo si el acceso, cambio o descarga corresponde a una operacion legitima, documentada y autorizada, y no hay exposicion publica, permisos indebidos, tokens sospechosos, actividad anomala ni datos afectados.

Comprobaciones minimas:

* Confirmar con el propietario del servicio si el cambio o acceso era esperado.
* Revisar usuario, rol, IP, ubicacion, dispositivo, MFA y hora del evento.
* Comprobar auditoria de permisos, enlaces compartidos, descargas, borrados y cambios de configuracion.
* Revisar API keys, tokens, aplicaciones OAuth, integraciones y dispositivos recordados.
* Verificar si hay almacenamiento publico o comparticiones externas no justificadas.
* Revisar si hay actividad similar en otros servicios cloud o cuentas.

Debe escalarse si hay cuenta privilegiada, token/API key filtrado, almacenamiento publico con datos, descarga masiva, cambio de permisos no autorizado, integracion sospechosa, proveedor cloud implicado, borrado o cifrado de datos, datos personales expuestos o interrupcion de servicio.

#### Preguntas clave de la investigaciÃ³n

* Â¿QuÃ© servicio cloud estÃ¡ afectado: correo, almacenamiento, CRM/ERP SaaS, backup, colaboraciÃ³n, panel web o integraciÃ³n?
* Â¿QuÃ© cuenta, rol, grupo, token, API key, aplicaciÃ³n OAuth o dispositivo iniciÃ³ la actividad sospechosa?
* Â¿QuÃ© cambios se realizaron en permisos, comparticiones, configuraciones, usuarios, roles o integraciones?
* Â¿Hay enlaces pÃºblicos, buckets/carpetas expuestas, descargas masivas o borrados anÃ³malos?
* Â¿Desde quÃ© IPs, paÃ­ses, dispositivos o clientes se accediÃ³ al servicio?
* Â¿El origen probable es credencial robada, error de configuraciÃ³n, token filtrado, proveedor cloud o endpoint comprometido?
* Â¿QuÃ© datos personales, fiscales, contables o de clientes/proveedores pudieron exponerse?
* Â¿QuÃ© procesos de negocio dependen del servicio afectado y quÃ© impacto tendrÃ­a revocar accesos o pausar integraciones?
* Â¿QuÃ© visibilidad ofrece el proveedor cloud y cuÃ¡ndo caducan los logs necesarios?
* Â¿QuÃ© IOCs, cuentas o patrones deben bloquearse, monitorizarse o compartirse en MISP si procede?
* Â¿Es necesario activar tambiÃ©n los playbooks de identidad, fuga de datos, phishing o cadena de suministro?

### Remediar

* **Planificar eventos de remediaciÃ³n** con TIC/CISO, propietarios del servicio, Legal y proveedor cloud.
* **Considerar el momento**: revocar tokens o cortar integraciones puede parar procesos de negocio; documentar riesgo y aprobaciÃ³n.

#### ContenciÃ³n

1. Bloquear cuentas sospechosas y revocar sesiones activas.
2. Revocar tokens, API keys, aplicaciones OAuth y dispositivos recordados.
3. Deshabilitar enlaces pÃºblicos y comparticiones externas no justificadas.
4. Restringir temporalmente acceso por ubicaciÃ³n, IP, dispositivo o grupo.
5. Pausar sincronizaciones o integraciones afectadas.
6. Activar alertas reforzadas sobre descargas masivas, cambios de permisos y nuevas apps.
7. Solicitar soporte del proveedor cloud si hay limitaciones de visibilidad o sospecha de incidente en su plataforma.

#### Erradicar

1. Eliminar roles, usuarios, reglas, apps o integraciones no autorizadas.
2. Corregir configuraciones inseguras: almacenamiento pÃºblico, permisos heredados, ausencia de MFA o claves sin rotaciÃ³n.
3. Rotar secretos, certificados, API keys y contraseÃ±as asociadas.
4. Revisar dispositivos de usuarios implicados y activar playbook de identidad o phishing si procede.
5. Aplicar polÃ­ticas de mÃ­nimo privilegio y revisiÃ³n trimestral de permisos.
6. Exportar evidencias antes de que caduquen logs del proveedor.

#### Referencia: Recursos de remediaciÃ³n

* Consola de administraciÃ³n cloud.
* Logs de auditorÃ­a, CASB si existe, SIEM, correo y directorio.
* TIC/CISO, propietario del servicio, Legal y proveedor cloud.
* Copias locales/offsite para continuidad.

### Comunicar

1. Informar al Incident Commander de servicio afectado, severidad, datos y acciones de contenciÃ³n.
2. Coordinar con proveedor cloud por canal oficial y registrar nÃºmero de caso.
3. Escalar a Legal si hay datos personales o acceso de terceros.
4. Avisar a usuarios de cambios temporales: bloqueo de comparticiones, MFA obligatorio, revisiÃ³n de permisos o indisponibilidad.
5. Preparar comunicaciÃ³n a clientes/proveedores si se interrumpe un servicio o se exponen datos.
6. Evaluar notificaciÃ³n a AEPD si procede.

### RecuperaciÃ³n

1. Restaurar datos borrados o modificados desde versionado o backup limpio.
2. Rehabilitar cuentas e integraciones solo tras rotar credenciales y validar permisos.
3. Validar con propietarios que el servicio funciona y los datos son Ã­ntegros.
4. Mantener monitorizaciÃ³n reforzada durante al menos 72 horas.
5. Documentar controles nuevos: MFA, alertas, revisiÃ³n de permisos, backup cloud/local y clÃ¡usulas con proveedor.
6. Actualizar inventario de servicios cloud y responsables.

### Recursos

#### InformaciÃ³n adicional

1. <a name="cloud-playbook-ref-1"></a>[MITRE ATT&CK - Cloud Accounts](https://attack.mitre.org/techniques/T1078/004/)
2. <a name="cloud-playbook-ref-2"></a>[MITRE ATT&CK - Cloud Service Dashboard](https://attack.mitre.org/techniques/T1538/)
3. <a name="cloud-playbook-ref-3"></a>[MITRE ATT&CK - Data from Cloud Storage](https://attack.mitre.org/techniques/T1530/)
4. <a name="cloud-playbook-ref-4"></a>[MITRE ATT&CK - Account Access Removal](https://attack.mitre.org/techniques/T1531/)
5. <a name="cloud-playbook-ref-5"></a>[RE&CT Framework](https://atc-project.github.io/atc-react/)
