### Playbook: Phishing

**Objetivo:** Detectar, analizar y responder a campañas de phishing contra empleados de **Secure Shield Pentesting S.L.** para prevenir compromiso de credenciales (Azure, VPN), infección por malware y exfiltración de datos.

#### Investigar

1.  **Detección y Reporte:** Reportes de empleados (`phishing@secure-shield.com`), alertas de gateway de correo, EDR/Antivirus, o SIEM/Azure Sentinel (actividad sospechosa post-clic).
2.  **Análisis Inicial del Mensaje (en sandbox):** Remitente (spoofing, typosquatting), destinatarios (spear-phishing, masivo), asunto y cuerpo (urgencia, errores), enlaces (destino real, reputación con VirusTotal, URLScan.io), adjuntos (tipo, análisis en sandbox), cabeceras (ruta, SPF/DKIM/DMARC).
3.  **Determinar Alcance:** ¿Cuántos recibieron el correo? ¿Quiénes interactuaron (clic, apertura, credenciales introducidas)? Revisar logs de proxy/DNS/Firewall, EDR, autenticación (Azure AD, VPN).
4.  **Categorización y Gravedad:** ¿Robo de credenciales? ¿Malware? ¿Spear-phishing a ejecutivos/pentesters? Considerar usuarios afectados, sensibilidad de datos objetivo, compromiso exitoso.

#### Remediar

**Objetivo:** Neutralizar amenaza, asegurar cuentas/sistemas, educar usuarios.

##### Contener

1.  **Bloqueo de IOCs:** URLs/Dominios (firewalls, proxy, DNS, gateway correo). Hashes de adjuntos (EDR, gateway correo). IPs remitente (gateway correo/firewall).
2.  **Eliminación de Correos:** Usar herramientas del servidor de correo para eliminar/cuarentenar correos de bandejas de usuarios.
3.  **Aislamiento de Sistemas Infectados (si hubo malware):** Desconectar endpoints de la red.
4.  **Bloqueo/Reseteo de Cuentas Comprometidas:** Si se introdujeron credenciales: forzar cierre de sesiones, deshabilitar cuenta o forzar cambio de contraseña inmediato. Asegurar MFA activo y robusto.

##### Erradicar

1.  **Eliminación de Malware (si aplica):** Limpiar endpoints con EDR/Antivirus o reconstruir si es severo.
2.  **Asegurar Cuentas:** Confirmar cambio de contraseñas expuestas. Revisar actividad reciente de cuentas comprometidas (reglas de reenvío, permisos Azure).
3.  **Parcheo de Vulnerabilidades:** Si phishing explotó vulnerabilidad en cliente de correo/navegador, parchear sistemas.
4.  **Revisión Políticas Seguridad Correo:** Asegurar SPF, DKIM, DMARC (p=reject/quarantine) para dominios de **Secure Shield Pentesting S.L.** Fortalecer filtrado en gateway.

##### Recuperar

1.  **Restauración Sistemas/Datos (si malware destructivo):** Desde backups limpios.
2.  **Rehabilitación Cuentas/Sistemas:** Una vez asegurados.
3.  **Educación y Concienciación Usuario:** Comunicar sobre campaña específica. Reforzar formación (detectar phishing, no interactuar). Realizar simulaciones.
4.  **Monitorización Post-Incidente:** Vigilar cuentas y sistemas objetivo/afectados.

#### Comunicar

1.  **Interna (Secure Shield Pentesting S.L.):**
    *   **Equipo Seguridad/SOC:** Reportar, compartir IOCs.
    *   **Usuarios Afectados:** Instrucciones (cambiar contraseña, escanear equipo), asegurar que reportar fue correcto.
    *   **Todos Empleados:** Alerta sobre campaña, ejemplos, recordatorios.
    *   **Dirección/Legal:** Informar severidad, alcance, compromiso de datos sensibles.
2.  **Externa (Limitada salvo brecha mayor):**
    *   **Proveedores Dominios/Hosting (sitio phishing):** Reportar para takedown.
    *   **Autoridades (si phishing llevó a brecha datos o fraude):** Considerar.
    *   **Clientes (SOLO si sus datos fueron comprometidos, o si phishing suplantaba a SSP y podría afectarles):** Coordinar con Legal/Dirección. Ser transparente.

#### Recursos

*   **Gateway Seguridad Correo (anti-phishing/malware).**
*   **Solución EDR/Antivirus.**
*   **Azure Sentinel / SIEM.**
*   **Herramientas análisis URLs/archivos (VirusTotal, URLScan.io, sandboxes).**
*   **Plataforma Formación Concienciación y Simulación Phishing.**
*   **Procedimiento reporte phishing de Secure Shield Pentesting S.L.**
*   **Lista contactos emergencia (IC, Equipo Seguridad).**