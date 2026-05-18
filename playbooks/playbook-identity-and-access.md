## Playbook: Compromiso de identidad y acceso

**Investigar, remediar, comunicar y recuperar en paralelo.** Este playbook se activa cuando hay sospecha de uso indebido de credenciales, acceso no autorizado a correo, VPN, CRM/ERP, cloud o cuentas privilegiadas.

### Relación con MITRE ATT&CK y RE&CT

Evidencias asociadas: `evidencias-mitre/attack-identity-layer.json` y `evidencias-mitre/react-response-layer.json`.

| Fase | MITRE ATT&CK | RE&CT | Acción del playbook |
|---|---|---|---|
| Identificación | T1078 Valid Accounts; T1110 Brute Force | RS0002 Identification; RA2601 List users authenticated; Put compromised accounts on monitoring | Revisar autenticaciones, ubicaciones, sesiones y actividad de las cuentas sospechosas. |
| Contención | T1098 Account Manipulation; T1136 Create Account | RS0003 Containment; RA3601 Lock user account | Bloquear cuentas, revocar sesiones, retirar permisos y cortar accesos remotos. |
| Erradicación | T1548 Abuse Elevation Control Mechanism | RS0004 Eradication; RA4602 Remove user account | Eliminar cuentas o permisos no autorizados y corregir configuraciones débiles. |
| Recuperación | T1087 Account Discovery; T1538 Cloud Service Dashboard | RS0005 Recovery; RA5601 Unlock locked user account | Restaurar cuentas legítimas con MFA, mínimo privilegio y monitorización reforzada. |

### Investigar

1. Confirmar la cuenta o identidad afectada: usuario, cuenta de servicio, administrador, buzón compartido, cuenta cloud o credencial API.
2. Recoger logs de autenticación de correo, VPN, directorio, CRM/ERP, cloud, EDR y SIEM.
3. Determinar desde cuándo existe actividad sospechosa y desde qué IP, país, dispositivo, navegador o cliente.
4. Revisar señales de compromiso:
   * Inicios de sesión fuera de horario o ubicación habitual.
   * Cambios de contraseña, MFA, teléfono de recuperación o reglas de buzón.
   * Reenvíos externos, delegaciones, creación de cuentas o elevación de privilegios.
   * Acceso anómalo a CRM/ERP, servidores de archivos, datos personales o cloud.
5. Identificar si la cuenta se usó para phishing interno, exfiltración, movimiento lateral o cambios administrativos.
6. Clasificar severidad:
   * S1 si afecta a cuentas privilegiadas, CRM/ERP, datos personales masivos o continuidad.
   * S2 si hay acceso no autorizado probable a sistemas críticos.
   * S3 si se limita a una cuenta de usuario sin evidencia de datos afectados.
   * S4 si es intento bloqueado sin acceso confirmado.

#### Preguntas clave de la investigación

* ¿Qué identidad está afectada: usuario, administrador, cuenta de servicio, buzón compartido, API key o cuenta cloud?
* ¿Cuál fue el primer inicio de sesión sospechoso y desde qué IP, país, dispositivo, navegador o cliente?
* ¿La autenticación superó MFA o hubo fatiga MFA, bypass, dispositivo recordado o token robado?
* ¿Qué sistemas fueron accedidos con esa identidad: correo, VPN, CRM/ERP, cloud, servidores o paneles de proveedor?
* ¿Se modificaron permisos, grupos, reglas de correo, delegaciones, aplicaciones OAuth o métodos de recuperación?
* ¿Se crearon cuentas nuevas o se elevaron privilegios?
* ¿La cuenta se usó para phishing interno, exfiltración, movimiento lateral o cambios administrativos?
* ¿Qué datos personales o información crítica pudo consultar, descargar o modificar la identidad?
* ¿Qué otras cuentas presentan patrones de autenticación similares?
* ¿Qué IOCs o patrones de comportamiento deben enviarse al SIEM o compartirse en MISP si procede?
* ¿Es necesario activar también los playbooks de phishing, cloud, ransomware o fuga de datos?

### Remediar

* **Planificar eventos de remediación** con TIC/CISO, propietario del sistema y Legal si hay datos personales.
* **Considerar el momento**: en ataques activos se prioriza contención inmediata; si se sospecha compromiso avanzado, preservar evidencias antes de cambios irreversibles.

#### Contención

1. Bloquear temporalmente la cuenta afectada y cualquier cuenta relacionada.
2. Revocar sesiones, tokens, cookies persistentes, claves API y dispositivos recordados.
3. Forzar cambio de contraseña y reactivación de MFA desde un canal seguro.
4. Retirar permisos administrativos o accesos a CRM/ERP, servidores, correo, VPN y cloud hasta completar revisión.
5. Bloquear IPs, dominios o clientes sospechosos en firewall, correo, VPN o consola cloud.
6. Activar monitorización reforzada de cuentas similares, grupos privilegiados y accesos remotos.
7. Conservar evidencias antes de eliminar reglas, correos o configuraciones sospechosas.

#### Erradicar

1. Eliminar reglas de correo, reenvíos, delegaciones, buzones ocultos o aplicaciones OAuth no autorizadas.
2. Eliminar cuentas creadas por el atacante y restaurar grupos/permisos al mínimo privilegio.
3. Revisar cuentas de servicio y rotar secretos asociados.
4. Corregir configuraciones débiles: MFA ausente, contraseñas compartidas, permisos excesivos, excepciones sin justificar.
5. Revisar dispositivos usados por la cuenta comprometida y tratarlos con el playbook de malware/ransomware si aparecen indicadores.
6. Registrar todos los cambios en el archivo del incidente.

#### Referencia: Recursos de remediación

* TIC/CISO para directorio, correo, VPN, CRM/ERP, SIEM y EDR.
* Propietarios de sistemas para validar permisos legítimos.
* Legal y Cumplimiento si pudo haber acceso a datos personales.
* Proveedor externo de respuesta si hay compromiso de cuentas privilegiadas o múltiples sistemas.

### Comunicar

1. Informar al Incident Commander con resumen de cuenta, alcance, sistemas afectados y severidad.
2. Notificar al propietario del sistema y responsable de la unidad afectada.
3. Coordinar con Legal si hay indicios de acceso a datos personales, CRM/ERP o información de clientes/proveedores.
4. Comunicar al usuario afectado instrucciones concretas: no reutilizar contraseñas, no borrar evidencias, confirmar actividad legítima.
5. Comunicar a la organización solo si hay riesgo de phishing interno, robo de credenciales generalizado o cambios de procedimiento.
6. Coordinar con proveedores cloud/correo/VPN si el acceso no autorizado afecta a sus plataformas.

### Recuperación

1. Reactivar la cuenta solo tras rotar credenciales, revisar MFA y eliminar persistencia.
2. Restaurar permisos estrictamente necesarios y documentar excepciones.
3. Validar con el propietario que el usuario puede trabajar y que no se han perdido datos.
4. Mantener monitorización reforzada durante al menos 72 horas para cuentas críticas.
5. Revisar alertas retrospectivas para detectar actividad similar en otros usuarios.
6. Incorporar lecciones aprendidas: formación, MFA obligatorio, revisión trimestral de permisos y mejora de detecciones.

### Recursos

#### Información adicional

1. <a name="identity-and-access-playbook-ref-1"></a>[MITRE ATT&CK - Valid Accounts](https://attack.mitre.org/techniques/T1078/)
2. <a name="identity-and-access-playbook-ref-2"></a>[MITRE ATT&CK - Account Manipulation](https://attack.mitre.org/techniques/T1098/)
3. <a name="identity-and-access-playbook-ref-3"></a>[RE&CT - Lock user account](https://atc-project.github.io/atc-react/Response_Actions/RA_3601_lock_user_account/)
