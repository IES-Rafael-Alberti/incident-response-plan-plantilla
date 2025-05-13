# Playbook: Phishing

**Investiga, remedia (contén, erradica), y comunica en paralelo.**

Asigna pasos a individuos o equipos para trabajar en paralelo siempre que sea posible; este playbook no es puramente secuencial. Usa tu mejor criterio.

---

## Investigar

1. **Recoge la evidencia del correo sospechoso de phishing**
    - Solicita al usuario/la víctima que reenvíe el mensaje sospechoso **como archivo adjunto**, no como reenvío simple para mantener los headers.
    - Solicita capturas de pantalla del correo y cualquier interacción sospechosa (enlaces, archivos, ventanas emergentes).
    - Pide que se interrumpan las acciones en ese equipo hasta tener indicaciones.

2. **Analiza el correo electrónico**
    - **Cabeceras:** Revisa cabeceras para ver remitente real, rutas, servidores y posibles suplantaciones.
    - **Enlaces:** Analiza los hipervínculos usando herramientas automáticas (VirusTotal, URLScan, etc.) sin hacer clic directamente.
    - **Archivos adjuntos:** Analiza los archivos con sandbox o antivirus especializado en malware.
    - Determina si el phishing busca robo de credenciales, descarga de malware o fraude financiero.

3. **Identifica víctimas y alcance**
    - Consulta los logs de correo para detectar si otros usuarios han recibido el mismo mensaje y cuántos han interactuado.
    - Pregunta a los usuarios si han introducido credenciales tras el phishing o si han descargado software.

4. **Recopila más información relevante**
    - ¿El phishing suplanta a alguien interno, un proveedor, un banco, etc.?
    - ¿Qué tipo de datos solicita?
    - ¿El idioma, diseño y formato coinciden con campañas conocidas?
    - Guía para analizar phishing

5. **Herramientas de apoyo al análisis**
    - Herramientas de análisis de cabeceras (MxToolbox)
    - Sandbox y motores antimalware (Hybrid Analysis, Any.run, etc.)

---

## Remediar

### Contención

1. **Informa inmediatamente a todos los usuarios objetivos o posibles afectados.**
    - Solicita no hacer clic ni abrir archivos adjuntos.
2. **Bloquea los enlaces y remitentes identificados como maliciosos en el gateway de correo y en el proxy web.**
3. **Deshabilita cuentas o cambia contraseñas si hay indicios de robo de credenciales.**
4. **Aísla el equipo si se detectó descarga de malware.**
5. **Activa reglas antispam y filtros para bloquear la campaña a futuro.**

### Erradicación

1. Elimina los mensajes de phishing de las bandejas de entrada de todos los usuarios (desde la consola de administración de correo).
2. Elimina archivos maliciosos descargados, si los hay.
3. Realiza un escaneo completo de los equipos afectados.
4. Revoca accesos o sesiones sospechosas (por ejemplo, sesiones web abiertas tras phishing).
5. Actualiza las reglas y filtros antiphishing.

---

## Comunicación

1. **Escala y comunica el incidente a dirección y responsables de seguridad.**
2. Documenta el incidente y la respuesta, siguiendo el procedimiento interno.
3. Comunica si es necesario al DPO o responsable legal si hay riesgo de fuga o GDPR.
4. Informa a todos los usuarios y departamentos sobre el incidente y las acciones preventivas.
5. Si el phishing afectó a clientes/proveedores y hubo fuga real, prepara la notificación oficial.
6. Contacta con el proveedor de seguros de ciber, si aplica.
7. Valora la notificación a INCIBE/CERT y, en casos graves, a las Fuerzas y Cuerpos de Seguridad del Estado.
8. Coordina con los equipos de RRHH para informar y apoyar a trabajadores afectados.

---

## Recuperar

1. **Restaura servicios de correo si ha habido bloqueo de cuentas.**
2. Solicita cambio de contraseña a toda cuenta afectada o potencialmente afectada.
3. Restablece archivos eliminados o alterados, si es necesario.
4. Notifica al usuario que el incidente ha sido mitigado y da recomendaciones de prevención.
5. Monitoriza actividad relacionada (inicios de sesión sospechosos, movimientos de datos, etc.).

---

## Prevención y reducción de riesgos

1. Implementa formación periódica en phishing y simulacros para todos los empleados.
2. Refuerza políticas de Doble Factor de Autenticación (2FA) y avisos de acceso inusual.
3. Mantén configurados filtros de correo avanzados y herramientas de threat intelligence.
4. Incluye banners de advertencia sobre correos externos y revisa la configuración DMARC, DKIM y SPF.
5. Aplica una política de privilegios mínimos en cuentas administrativas y de usuario.
6. Suscribe la empresa a servicios de alerta temprana sobre nuevas campañas de phishing.
7. Publica recomendaciones de nuevas amenazas detectadas de manera interna.

---

## Recursos para remediación

- Personal de IT y ciberseguridad
- Socio estratégico de correo seguro (Microsoft Defender ATP, Google Workspace Security, Proofpoint, etc.)
- Relación de usuarios y equipos críticos
- Contacto con empresas de threat intelligence (opcional)
- Herramientas de sandbox y análisis de malware

---

## Acciones recomendadas para el usuario

1. Mantén la calma y NO interactúes con el mensaje sospechoso.
2. Toma una captura de pantalla y reenvía el mensaje como archivo adjunto al equipo de seguridad.
3. Si has hecho clic o introducido tus credenciales, cambia tu contraseña inmediatamente y contacta a IT.
4. No compartas el correo ni lo reenvíes a otros usuarios.
5. Espera instrucciones del equipo de soporte.

---

## Acciones recomendadas para el helpdesk

1. Prioriza la apertura de ticket y la recopilación de pruebas.
2. Aísla el equipo si se sospecha descarga de malware.
3. Recopila información sobre la interacción con el correo (clics, descargas, datos introducidos).
4. Asiste a la víctima en cambio de contraseñas.
5. Escala el incidente al equipo de ciberseguridad.
6. Documenta todo el proceso en el ticket y prepara informe para el CISO.

---

## Información adicional

1. [Herramientas de análisis de phishing](https://www.cybersecurity-help.cz/vdb/tools)

---

## Referencias MITRE ATT&CK y RE&CT

- **MITRE ATT&CK:** T1566 (Phishing), T1204 (User Execution), T1078 (Valid Accounts)
- **RE&CT:** Detección inicial, Contención inmediata, Erradicación, Comunicación y Formación