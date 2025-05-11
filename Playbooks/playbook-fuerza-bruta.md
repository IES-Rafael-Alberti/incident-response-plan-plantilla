### Playbook: Ataques de Fuerza Bruta

**Objetivo:** Detectar, contener, erradicar y recuperarse de ataques de fuerza bruta contra sistemas de **Secure Shield Pentesting S.L.** (portal cliente, accesos Azure, VPN, servidores on-premise, endpoints de pentesters).

#### Investigar

1.  **Detección y Alerta Temprana:** Monitorizar alertas de Azure AD Identity Protection, Azure Sentinel, SIEM y logs EDR sobre múltiples intentos fallidos de inicio de sesión. Revisar logs de autenticación de servidores, VPN y portal cliente. Observar picos inusuales de tráfico de autenticación.
2.  **Análisis de Logs de Autenticación:** Identificar cuentas objetivo (priorizar administrativas, de servicio, pentesters). Determinar IPs de origen (geolocalización, reputación). Analizar patrones (distribuidos/única fuente, lentos/rápidos, diccionarios específicos). Correlacionar con otros eventos de seguridad.
3.  **Verificación de Compromiso de Cuentas:** Comprobar si alguna cuenta objetivo fue comprometida (inicio de sesión exitoso desde IP sospechosa tras múltiples fallos). Si se sospecha, iniciar playbook de "Compromiso de Credenciales".
4.  **Escaneo de Vulnerabilidades (Contextual):** Si el ataque se dirige a un servicio específico, verificar si tiene vulnerabilidades conocidas. Asegurar que no existan cuentas por defecto o contraseñas triviales.

#### Remediar

**Objetivo:** Bloquear el ataque, asegurar cuentas y fortalecer defensas.

##### Contener

1.  **Bloqueo de IPs/Rangos Maliciosos:** Implementar reglas en Azure NSGs, Azure Firewall, WAF y firewalls on-premise. Si es distribuido, considerar bloqueo temporal de regiones geográficas no esperadas.
2.  **Bloqueo de Cuentas:** Configurar políticas de bloqueo tras intentos fallidos (Azure AD, AD on-premise). Deshabilitar temporalmente cuentas bajo ataque intenso.
3.  **Aislamiento de Cuentas Comprometidas:** Si se confirma compromiso: forzar cierre de sesiones, deshabilitar cuenta, iniciar investigación forense.
4.  **Implementación de Bloqueo Automático:** Asegurar Azure AD Identity Protection configurado. Usar `fail2ban` en Linux. Configurar IPS/IDS.

##### Erradicar

1.  **Análisis y Fortalecimiento de Cuentas:** Si hubo compromiso, eliminar persistencia/backdoor. Auditar cuentas (especialmente privilegiadas) para identificar contraseñas débiles o cuentas no usadas.
2.  **Revisión y Fortalecimiento de Políticas de Contraseñas:** Exigir complejidad, longitud mínima y no reutilización en **Secure Shield Pentesting S.L.** Promover gestores de contraseñas.
3.  **Implementación Universal de MFA:** Asegurar MFA habilitado y obligatorio para TODAS las cuentas de empleados de **Secure Shield Pentesting S.L.** (Azure, VPN, sistemas críticos). Revisar configuración MFA.
4.  **Parcheo de Vulnerabilidades:** Aplicar parches si se identificaron vulnerabilidades que facilitaron el ataque.

##### Recuperar

1.  **Restablecimiento de Contraseñas:** Forzar restablecimiento para cuentas comprometidas o bajo ataque intenso (a nueva, única y compleja). Asegurar elección de contraseñas seguras.
2.  **Rehabilitación de Cuentas/Servicios:** Una vez aseguradas, rehabilitar cuentas o servicios bloqueados.
3.  **Monitorización Continua de Actividad:** Implementar/mejorar monitorización de logs de autenticación. Configurar alertas más sensibles.
4.  **Actualización del BCP/DRP:** Revisar y actualizar procedimientos para manejar compromisos de cuentas.

#### Comunicar

1.  **Interna (Secure Shield Pentesting S.L.):**
    *   **Equipo de Respuesta:** Coordinación sobre IPs bloqueadas, cuentas afectadas.
    *   **Dirección/Legal:** Informar sobre incidente, especialmente si hay sospecha de compromiso de cuentas con acceso a datos de clientes. Detallar impacto y medidas.
    *   **Empleados (si aplica):** Comunicar acciones a seguir (cambio masivo de contraseñas, afectación a servicios internos) sin alarmar.
2.  **Externa:**
    *   **Clientes (Solo si sus cuentas en portal fueron objetivo/comprometidas):** Comunicación transparente y directa. Recomendar cambio de contraseña y revisión de actividad.
    *   **Proveedores (Azure, ISP):** Contactar soporte Azure si se observan ataques masivos. Colaborar con ISPs para bloquear tráfico.
    *   **Autoridades (si compromiso es grave):** Considerar notificación si lleva a brecha de datos significativa.

#### Recursos

*   **Azure AD Identity Protection.**
*   **Azure Sentinel / SIEM.**
*   **WAF.**
*   **EDR.**
*   **Herramientas de análisis de logs y reputación de IP.**
*   **Guías de Buenas Prácticas en Gestión de Contraseñas y MFA.**
*   **Política de Contraseñas y Control de Acceso de Secure Shield Pentesting S.L.**