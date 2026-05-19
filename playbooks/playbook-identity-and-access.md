## Playbook: Compromiso de identidad y acceso

**Investigar, remediar, comunicar y recuperar en paralelo.** Este playbook se activa cuando hay sospecha de uso indebido de credenciales, acceso no autorizado a correo, VPN, CRM/ERP, cloud o cuentas privilegiadas.

### RelaciÃ³n con MITRE ATT&CK y RE&CT

Evidencias asociadas: `evidencias-mitre/attack-identity-layer.json` y `evidencias-mitre/react-response-layer.json`.

| Fase | MITRE ATT&CK | RE&CT | AcciÃ³n del playbook |
|---|---|---|---|
| IdentificaciÃ³n | T1078 Valid Accounts; T1110 Brute Force | RS0002 Identification; RA2601 List users authenticated; Put compromised accounts on monitoring | Revisar autenticaciones, ubicaciones, sesiones y actividad de las cuentas sospechosas. |
| ContenciÃ³n | T1098 Account Manipulation; T1136 Create Account | RS0003 Containment; RA3601 Lock user account | Bloquear cuentas, revocar sesiones, retirar permisos y cortar accesos remotos. |
| ErradicaciÃ³n | T1548 Abuse Elevation Control Mechanism | RS0004 Eradication; RA4602 Remove user account | Eliminar cuentas o permisos no autorizados y corregir configuraciones dÃ©biles. |
| RecuperaciÃ³n | T1087 Account Discovery; T1538 Cloud Service Dashboard | RS0005 Recovery; RA5601 Unlock locked user account | Restaurar cuentas legÃ­timas con MFA, mÃ­nimo privilegio y monitorizaciÃ³n reforzada. |

### Investigar

1. Confirmar la cuenta o identidad afectada: usuario, cuenta de servicio, administrador, buzÃ³n compartido, cuenta cloud o credencial API.
2. Recoger logs de autenticaciÃ³n de correo, VPN, directorio, CRM/ERP, cloud, EDR y SIEM.
3. Determinar desde cuÃ¡ndo existe actividad sospechosa y desde quÃ© IP, paÃ­s, dispositivo, navegador o cliente.
4. Revisar seÃ±ales de compromiso:
   * Inicios de sesiÃ³n fuera de horario o ubicaciÃ³n habitual.
   * Cambios de contraseÃ±a, MFA, telÃ©fono de recuperaciÃ³n o reglas de buzÃ³n.
   * ReenvÃ­os externos, delegaciones, creaciÃ³n de cuentas o elevaciÃ³n de privilegios.
   * Acceso anÃ³malo a CRM/ERP, servidores de archivos, datos personales o cloud.
5. Identificar si la cuenta se usÃ³ para phishing interno, exfiltraciÃ³n, movimiento lateral o cambios administrativos.
6. Clasificar severidad:
   * S1 si afecta a cuentas privilegiadas, CRM/ERP, datos personales masivos o continuidad.
   * S2 si hay acceso no autorizado probable a sistemas crÃ­ticos.
   * S3 si se limita a una cuenta de usuario sin evidencia de datos afectados.
   * S4 si es intento bloqueado sin acceso confirmado.

### Falso positivo y escalado

La alerta puede cerrarse como falso positivo si el acceso corresponde a una actividad legitima del usuario, proveedor o administrador, y no hay cambios de permisos, sesiones sospechosas, reglas de correo, MFA anomalo ni acceso a datos fuera del uso normal.

Comprobaciones minimas:

* Confirmar con el usuario si reconoce el inicio de sesion, dispositivo, ubicacion y hora.
* Revisar si la IP corresponde a VPN corporativa, proveedor autorizado o viaje documentado.
* Verificar MFA, cambios de contrasena, metodos de recuperacion y dispositivos recordados.
* Revisar sesiones activas, tokens, reglas de buzon, delegaciones y aplicaciones OAuth.
* Comprobar accesos a CRM/ERP, cloud, servidores de archivos y datos personales.
* Revisar si hay actividad similar en otras cuentas.

Debe escalarse si hay cuenta privilegiada implicada, inicio de sesion imposible o no reconocido, MFA rechazado o sospechoso, cambios de permisos, reenvios externos, tokens no autorizados, acceso a datos personales, uso de VPN/cloud anomalo, varias cuentas afectadas o indicios de phishing interno.

#### Preguntas clave de la investigaciÃ³n

* Â¿QuÃ© identidad estÃ¡ afectada: usuario, administrador, cuenta de servicio, buzÃ³n compartido, API key o cuenta cloud?
* Â¿CuÃ¡l fue el primer inicio de sesiÃ³n sospechoso y desde quÃ© IP, paÃ­s, dispositivo, navegador o cliente?
* Â¿La autenticaciÃ³n superÃ³ MFA o hubo fatiga MFA, bypass, dispositivo recordado o token robado?
* Â¿QuÃ© sistemas fueron accedidos con esa identidad: correo, VPN, CRM/ERP, cloud, servidores o paneles de proveedor?
* Â¿Se modificaron permisos, grupos, reglas de correo, delegaciones, aplicaciones OAuth o mÃ©todos de recuperaciÃ³n?
* Â¿Se crearon cuentas nuevas o se elevaron privilegios?
* Â¿La cuenta se usÃ³ para phishing interno, exfiltraciÃ³n, movimiento lateral o cambios administrativos?
* Â¿QuÃ© datos personales o informaciÃ³n crÃ­tica pudo consultar, descargar o modificar la identidad?
* Â¿QuÃ© otras cuentas presentan patrones de autenticaciÃ³n similares?
* Â¿QuÃ© IOCs o patrones de comportamiento deben enviarse al SIEM o compartirse en MISP si procede?
* Â¿Es necesario activar tambiÃ©n los playbooks de phishing, cloud, ransomware o fuga de datos?

### Remediar

* **Planificar eventos de remediaciÃ³n** con TIC/CISO, propietario del sistema y Legal si hay datos personales.
* **Considerar el momento**: en ataques activos se prioriza contenciÃ³n inmediata; si se sospecha compromiso avanzado, preservar evidencias antes de cambios irreversibles.

#### ContenciÃ³n

1. Bloquear temporalmente la cuenta afectada y cualquier cuenta relacionada.
2. Revocar sesiones, tokens, cookies persistentes, claves API y dispositivos recordados.
3. Forzar cambio de contraseÃ±a y reactivaciÃ³n de MFA desde un canal seguro.
4. Retirar permisos administrativos o accesos a CRM/ERP, servidores, correo, VPN y cloud hasta completar revisiÃ³n.
5. Bloquear IPs, dominios o clientes sospechosos en firewall, correo, VPN o consola cloud.
6. Activar monitorizaciÃ³n reforzada de cuentas similares, grupos privilegiados y accesos remotos.
7. Conservar evidencias antes de eliminar reglas, correos o configuraciones sospechosas.

#### Erradicar

1. Eliminar reglas de correo, reenvÃ­os, delegaciones, buzones ocultos o aplicaciones OAuth no autorizadas.
2. Eliminar cuentas creadas por el atacante y restaurar grupos/permisos al mÃ­nimo privilegio.
3. Revisar cuentas de servicio y rotar secretos asociados.
4. Corregir configuraciones dÃ©biles: MFA ausente, contraseÃ±as compartidas, permisos excesivos, excepciones sin justificar.
5. Revisar dispositivos usados por la cuenta comprometida y tratarlos con el playbook de malware/ransomware si aparecen indicadores.
6. Registrar todos los cambios en el archivo del incidente.

#### Referencia: Recursos de remediaciÃ³n

* TIC/CISO para directorio, correo, VPN, CRM/ERP, SIEM y EDR.
* Propietarios de sistemas para validar permisos legÃ­timos.
* Legal y Cumplimiento si pudo haber acceso a datos personales.
* Proveedor externo de respuesta si hay compromiso de cuentas privilegiadas o mÃºltiples sistemas.

### Comunicar

1. Informar al Incident Commander con resumen de cuenta, alcance, sistemas afectados y severidad.
2. Notificar al propietario del sistema y responsable de la unidad afectada.
3. Coordinar con Legal si hay indicios de acceso a datos personales, CRM/ERP o informaciÃ³n de clientes/proveedores.
4. Comunicar al usuario afectado instrucciones concretas: no reutilizar contraseÃ±as, no borrar evidencias, confirmar actividad legÃ­tima.
5. Comunicar a la organizaciÃ³n solo si hay riesgo de phishing interno, robo de credenciales generalizado o cambios de procedimiento.
6. Coordinar con proveedores cloud/correo/VPN si el acceso no autorizado afecta a sus plataformas.

### RecuperaciÃ³n

1. Reactivar la cuenta solo tras rotar credenciales, revisar MFA y eliminar persistencia.
2. Restaurar permisos estrictamente necesarios y documentar excepciones.
3. Validar con el propietario que el usuario puede trabajar y que no se han perdido datos.
4. Mantener monitorizaciÃ³n reforzada durante al menos 72 horas para cuentas crÃ­ticas.
5. Revisar alertas retrospectivas para detectar actividad similar en otros usuarios.
6. Incorporar lecciones aprendidas: formaciÃ³n, MFA obligatorio, revisiÃ³n trimestral de permisos y mejora de detecciones.

### Recursos

#### InformaciÃ³n adicional

1. <a name="identity-and-access-playbook-ref-1"></a>[MITRE ATT&CK - Valid Accounts](https://attack.mitre.org/techniques/T1078/)
2. <a name="identity-and-access-playbook-ref-2"></a>[MITRE ATT&CK - Account Manipulation](https://attack.mitre.org/techniques/T1098/)
3. <a name="identity-and-access-playbook-ref-3"></a>[RE&CT - Lock user account](https://atc-project.github.io/atc-react/Response_Actions/RA_3601_lock_user_account/)
