## Playbook: Compromiso de Identidad y Acceso

**Investigar, remediar (contener, erradicar) y comunicar en paralelo. El movimiento lateral desde cuentas comprometidas es la principal amenaza.**

### Investigación

1. **Identificar las cuentas comprometidas:**
   - Alertas de autenticación anómala (ubicación geográfica, hora, dispositivo no habitual).
   - Múltiples intentos fallidos de inicio de sesión seguidos de éxito (fuerza bruta).
   - Inicios de sesión desde IPs sospechosas (TOR, VPN comercial, datacenter, países de riesgo).
   - Actividad fuera del horario laboral o desde ubicaciones incompatibles.
   - Notificaciones de "imposible travel" (inicios de sesión desde 2 ubicaciones distantes en poco tiempo).

2. **Determinar el alcance del acceso:**
   - ¿A qué sistemas y recursos tiene acceso la cuenta comprometida?
   - ¿Es una cuenta privilegiada (admin dominio, admin SaaS, root)?
   - ¿Se ha utilizado la cuenta para movimiento lateral? (Eventos 4624: logon, 4648: explicit credentials).
   - ¿Se han creado o modificado cuentas, grupos o políticas de acceso?
   - ¿Se han concedido delegaciones o permisos OAuth maliciosos?

3. **Técnicas MITRE ATT&CK relevantes:**
   - [TA0006 - Credential Access](https://attack.mitre.org/tactics/TA0006/): T1003 (Dumping), T1110 (Brute Force), T1555 (Cred from Password Stores).
   - [TA0007 - Discovery](https://attack.mitre.org/tactics/TA0007/): T1087 (Account Discovery), T1069 (Permission Groups Discovery).
   - [TA0008 - Lateral Movement](https://attack.mitre.org/tactics/TA0008/): T1021 (Remote Services), T1550 (Use Alternate Auth Material).

4. **Evaluar el impacto:**
   - **Funcional:** ¿Se han modificado configuraciones críticas? ¿Se ha accedido a datos sensibles?
   - **Información:** ¿Qué datos están en riesgo por el alcance de la cuenta?

### Contención

| Acción | Herramienta | Tiempo |
|--------|-------------|--------|
| Deshabilitar la cuenta comprometida | Active Directory / IAM | Inmediato |
| Resetear contraseña y revocar tokens de sesión | Active Directory / Identity Provider | Inmediato |
| Bloquear acceso a sistemas críticos desde la cuenta | Firewall, políticas de acceso condicional | < 15 min |
| Revisar y eliminar accesos/concesiones recientes | Logs de auditoría, consola OAuth | < 1 h |
| Activar MFA si no estaba activo | MFA provider (Microsoft Authenticator, etc.) | < 30 min |
| Bloquear IP de origen del compromiso | Firewall perimetral | < 15 min |

### Erradicación

1. **Auditoría completa de cuentas:**
   - Revisar todas las cuentas de usuario, especialmente las privilegiadas.
   - Identificar cuentas inactivas o huérfanas y eliminarlas.
2. **Revisión de cuentas de servicio:**
   - Verificar que usan credenciales rotadas y con permisos mínimos.
   - Implementar vault corporativo para gestión centralizada.
3. **Implementar JIT (Just-In-Time):**
   - Activar Privileged Identity Management (PIM) para accesos administrativos.
4. **Revisar reglas de delegación y grupos de seguridad:**
   - Eliminar delegaciones innecesarias.
   - Aplicar principio de mínimo privilegio (PoLP).

### Comunicación

1. **Interna:**
   - Notificar al usuario afectado y a su responsable directo.
   - Informar al departamento TIC para revisión técnica.
2. **Legal:** Si el compromiso afecta datos protegidos (RGPD), notificar a Legal para evaluar obligaciones.
3. **Formación:**
   - Reforzar la concienciación sobre phishing y robo de credenciales.
   - Recordatorio de no compartir contraseñas y usar MFA.
4. **Registro:**
   - Documentar el incidente completo: cuentas, sistemas, acciones tomadas, lecciones aprendidas.

### Recursos

- **Active Directory:** Administración de usuarios y grupos.
- **Azure AD / Identity Provider:** Logs de inicio de sesión, políticas de acceso condicional.
- **SIEM:** Reglas de correlación para detección de compromiso de identidad.
- **Vault corporativo:** Gestión de credenciales privilegiadas (por implementar en PDS).
