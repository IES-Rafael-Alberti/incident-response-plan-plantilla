
## Playbook: Ransomware — Security S.L.

**Investigar, remediar (contener, erradicar) y comunicar en paralelo. La contención es fundamental en los incidentes de ransomware, priorice en consecuencia.**

> **⚠️ Security S.L. sufrió un ataque de ransomware previo.** Este playbook incorpora las lecciones aprendidas. La activación del CSIRT debe ser inmediata (severidad crítica).

### Investigación

1. **Determinar la familia de ransomware:**
   - Buscar mensajes de rescate: GUI del malware, archivos .txt/.html, fondos de pantalla alterados, correos de contacto en extensiones cifradas.
   - Identificar extensión de archivos cifrados (ej: `.encrypted`, `.locked`, `.cry`).
   - Analizar la demanda: correo de contacto, wallet de criptomoneda, importe.
   - **Subir indicadores a:**
     - [Crypto Sheriff](https://www.nomoreransom.org/crypto-sheriff.php) (No More Ransom Project)
     - [ID Ransomware](https://id-ransomware.malwarehunterteam.com/)
   - Analizar tipos de archivo afectados (servidores de archivos Windows, NAS, bases de datos, unidades compartidas).

2. **Determinar el alcance:**
   - ¿Qué sistemas están afectados? Usar [EDR](#TODO-enlace-EDR) y [SIEM Wazuh](https://wazuh.securitysl.com) para buscar IOCs.
   - ¿Qué datos están afectados? Identificar tipos de archivo, rutas (compartidas, personales), departamentos implicados.
   - ¿Hay propagación a backups? Verificar estado de los backups [estrategia 3-2-1](#TODO-enlace-backups).
   - Buscar C2 externo: logs de firewall, DNS, proxy.

3. **Encontrar el vector de infección:**
   - Revisar [MITRE ATT&CK Initial Access (TA0001)](https://attack.mitre.org/tactics/TA0001/).
   - Vectores comunes en Security S.L.:
     - Email phishing con adjunto/enlace malicioso (logs de Exchange Online, seguridad email).
     - RDP expuesto (logs firewall, configuraciones de acceso remoto).
     - Vulnerabilidad en aplicación web (logs WAF, servidor web).
     - USB infectado (logs de dispositivo, MDM).
   - Entrevistar al usuario del sistema afectado.

4. **Evaluar el impacto:**
   - **Funcional:** ¿Qué servicios están caídos? (servidores de archivos, correo, aplicaciones). ¿Pérdida económica por hora?
   - **Información:** ¿Datos de clientes (RGPD) cifrados? ¿Propiedad intelectual afectada? ¿Financiero/contable?

### Contención

> **La contención es la prioridad #1 en ransomware.**

| Acción | Herramienta | Responsable | Tiempo |
|--------|-------------|-------------|--------|
| Aislar sistemas infectados de la red | EDR / desconexión física switch | SME Sistemas | Inmediato |
| Bloquear C2 en firewall/proxy/DNS | Firewall pfSense / proxy corporativo | SME Redes | Inmediato |
| Deshabilitar cuentas comprometidas | Active Directory | SME Sistemas | < 15 min |
| Poner en cuarentena unidades compartidas | Políticas de acceso NTFS / share | SME Sistemas | < 30 min |
| Proteger backups (hacer inmutables o desconectar) | Sistema de backups NAS + cloud | SME Sistemas | < 30 min |
| Purgar email vector de bandejas de entrada | Exchange Online / PowerShell | SME Sistemas | < 1 h |
| Bloquear IP/dominios maliciosos | Firewall, DNS sinkhole | SME Redes | Inmediato |
| Activar MFA forzado en todas las cuentas | MFA provider (si no activo) | SME Sistemas | < 1 h |

### Erradicación

1. **NO pagar el rescate** sin autorización expresa de Dirección General + Legal.
   - Evaluar con [No More Ransom Decryption Tools](https://www.nomoreransom.org/en/decryption-tools.html).
2. **Reconstruir sistemas** desde imagen limpia (no confiar en sistemas comprometidos).
3. **Restaurar datos desde backups** verificados (estrategia 3-2-1):
   - Verificar que los backups están libres de IOC antes de restaurar.
   - Priorizar: servidores críticos → datos clientes → sistemas departamentales.
4. **Resetear todas las contraseñas** del dominio.
5. **Rotar credenciales de servicio** y tokens de API.
6. **Monitorear reinfección** con alertas elevadas en SIEM durante 72h.

### Comunicación

1. **Interna:**
   - IC notifica a Dirección General inmediatamente.
   - Legal evalúa obligaciones de notificación.
   - Empleados: instrucciones claras (no conectar sistemas, reportar anomalías).
2. **Clientes:** Si datos de clientes están cifrados/exfiltrados → notificar con Legal ≤ 72h (AEPD).
3. **AEPD:** Notificación de brecha de datos personales si aplica.
4. **Proveedores:** Notificar a proveedor IR ([Counteractive Security](https://www.counteractive.net)) y seguro cibernético ([AAA Seguros](mailto:ciberseguros@aaa.es)).
5. **Fuerzas de seguridad:** Contactar con [BIT Policía Nacional](mailto:bit@policia.es) si hay extorsión o cibercrimen.
6. **ISAC:** Compartir IOCs con [ISAC Sectorial](mailto:info@isac-es.org).

### Recursos

- **Herramientas de identificación:** [Crypto Sheriff](https://www.nomoreransom.org/crypto-sheriff.php), [ID Ransomware](https://id-ransomware.malwarehunterteam.com/).
- **Decryption tools:** [No More Ransom](https://www.nomoreransom.org/en/decryption-tools.html).
- **Referencias MITRE ATT&CK:** [Initial Access (TA0001)](https://attack.mitre.org/tactics/TA0001/), [Impact (TA0040)](https://attack.mitre.org/tactics/TA0040/).

#### Referencia: Acciones del usuario ante sospecha de ransomware (Security S.L.)

1. **Mantener la calma.**
2. **Desconectar el equipo de la red** (cable Ethernet o desconectar WiFi).
3. Hacer fotos de la pantalla con el móvil (mensaje de rescate, archivos cifrados).
4. Tomar notas: ¿qué notaste?, ¿qué estabas haciendo?, ¿cuándo ocurrió?
5. Llamar a TIC al **+34 900 123 456** o email a **incidentes@securitysl.com**.
6. **No apagar el equipo** — los forenses necesitan la memoria RAM.

#### Referencia: Acciones del help desk ante sospecha de ransomware (Security S.L.)

1. Abrir ticket en el sistema ITSM con categoría "Ransomware".
2. Preguntar al usuario: (1) ¿Qué notó? (2) ¿Cuándo? (3) ¿Qué estaba haciendo? (4) ¿En qué red?
3. Solicitar fotos de pantalla.
4. Poner en cuarentena el equipo del usuario vía EDR.
5. Contactar al [CSIRT](#TODO-enlace-roster-csirt) inmediatamente.
6. No conectar el equipo a la red hasta que el SME Forense lo autorice.

### Información adicional

1. ["Ransomware Identification for the Judicious Analyst"](https://www.gdatasoftware.com/blog/2019/06/31666-ransomware-identification-for-the-judicious-analyst), Hahn (12 Jun 2019)
2. [No More Ransom! Project](https://www.nomoreransom.org) — Crypto Sheriff, Decryption Tools, Q&A.
3. [ID Ransomware](https://id-ransomware.malwarehunterteam.com/) service.
4. [MITRE ATT&CK Matrix](https://attack.mitre.org) — Initial Access (TA0001), Impact (TA0040).
