### Playbook: Ransomware

**Objetivo:** Detectar, investigar, contener, erradicar y recuperarse de ataques de ransomware que afecten los sistemas y datos de **Secure Shield Pentesting S.L.** (servidores on-premise, infraestructura Azure, endpoints de pentesters), con especial atención a la protección de datos de clientes e informes de vulnerabilidades.

#### Investigar

**Prioridad Inmediata: Confirmar si es Ransomware y qué sistemas/datos están afectados.**

1.  **Validación Inicial y Aislamiento Inmediato:**
    *   **Síntomas:** Archivos inaccesibles con extensiones cambiadas, notas de rescate, alertas de EDR sobre cifrado masivo, sistemas bloqueados mostrando mensajes de rescate.
    *   **Acción Crítica:** **AISLAR** los sistemas afectados de la red INMEDIATAMENTE para prevenir propagación. Desconectar físicamente, usar EDR para aislar host o bloquear comunicación a nivel de switch/firewall/NSG (Azure).
    *   **No apagar** sistemas afectados sin consultar con equipo forense/IC (puede perder evidencia en memoria), salvo que sea la única forma de detener propagación.

2.  **Identificar Alcance del Ataque:**
    *   **Sistemas Afectados:** ¿Qué servidores on-premise (Windows, Linux), VMs en Azure, endpoints de pentesters, bases de datos, almacenamiento Azure (Files, Blob) están cifrados o muestran infección?
    *   **Datos Afectados:** ¿Qué tipo de datos? ¿Informes de vulnerabilidades de clientes? ¿Datos internos de SSP? ¿Bases de datos del portal cliente? ¿Copias de seguridad?
    *   **Vector de Infección (Hipótesis Inicial):** ¿Cómo entró? (Phishing, vulnerabilidad explotada, credenciales RDP/VPN comprometidas, movimiento lateral).
    *   **Variante de Ransomware:** Intentar identificarla (extensión, nota, ID Ransomware). Ayuda a conocer TTPs y si existen decryptors (raro para variantes nuevas).
    *   **¿Exfiltración de Datos?** Muchas familias exfiltran datos antes de cifrar. Buscar evidencia de grandes transferencias salientes antes del cifrado (logs firewall, NetFlow, Azure Monitor).

3.  **Recopilación de Evidencia Forense (Paralelo al Aislamiento):**
    *   **Imágenes de Memoria:** De sistemas críticos afectados (si es posible antes de contaminación o apagado).
    *   **Imágenes de Disco:** De sistemas clave para análisis forense. Priorizar los que puedan contener punto de entrada o evidencia de movimiento lateral.
    *   **Logs Relevantes:** EDR/Antivirus, autenticación (Windows Event Logs, Azure AD, VPN/RDP), Firewall/NSG (Azure), proxy web, PowerShell/Shell.
    *   **Muestras de Malware:** Ejecutables del ransomware, notas de rescate, otros artefactos. Enviar a análisis (sandbox interno o externo seguro).
    *   **Cadena de Custodia:** Mantener para toda la evidencia.

4.  **Análisis del Vector y Movimiento Lateral:**
    *   Determinar punto de entrada inicial.
    *   Rastrear propagación en la red de **Secure Shield Pentesting S.L.** (Azure y on-premise).
    *   Identificar credenciales comprometidas y usadas.
    *   Verificar si se explotaron vulnerabilidades.

5.  **Evaluar Estado de Copias de Seguridad:**
    *   Verificar integridad y disponibilidad de backups de datos y sistemas afectados.
    *   Confirmar que backups **no estén cifrados** o comprometidos. Comprobar si son offline/aislados/inmutables.
    *   Determinar RPO (cuántos datos se perderían si se restaura desde último backup bueno).

#### Remediar

**Objetivo:** Erradicar el ransomware, restaurar sistemas y datos, prevenir reinfección.

**Decisión Crítica: ¿Pagar el Rescate?**
*   La política de **Secure Shield Pentesting S.L.** (y recomendación general) es **NO PAGAR**.
*   Pagar no garantiza recuperación, financia actividades criminales y marca como objetivo dispuesto a pagar.
*   Decisión a tomar al más alto nivel (Dirección, Legal, IC) tras evaluar opciones, impacto y estado de backups.

##### Contener

*   **Aislamiento de Red:** Asegurar que todos los sistemas infectados/sospechosos estén completamente aislados.
*   **Segmentación:** Implementar o reforzar segmentación de red si no se hizo, para limitar alcance si erradicación no es inmediata.
*   **Bloqueo de Cuentas:** Deshabilitar cuentas de usuario y servicio sospechosas de compromiso o usadas por el atacante.
*   **Bloqueo de IOCs:** Bloquear IPs, dominios, hashes de malware en firewalls, proxies, EDR, gateways de correo.
*   **Desconexión de Almacenamiento Compartido:** Si shares de red (Azure Files, on-premise) están siendo cifrados, desconectarlos temporalmente.

##### Erradicar

*   **Identificar y Eliminar Malware:** Usar EDR y antivirus actualizados para escanear y eliminar ejecutables de ransomware y otros componentes maliciosos de todos los sistemas (para prevenir reinfección). Eliminar mecanismos de persistencia.
*   **Parchear Vulnerabilidades:** Si se identificó una vulnerabilidad como vector de entrada o para movimiento lateral, parchearla inmediatamente en todos los sistemas susceptibles.
*   **Restablecimiento de Credenciales:** **Restablecer TODAS las contraseñas** del dominio (especialmente administradores, cuentas de servicio, usuarios de equipos infectados). Rotar claves API Azure, secretos y otras credenciales sensibles. Forzar MFA para todas las cuentas si no estaba implementado universalmente.
*   **Reconstrucción de Sistemas (si es necesario):** Para sistemas críticos dañados o donde la erradicación completa no es segura, reconstruir desde imagen limpia y luego restaurar datos. No restaurar sistemas completos desde backups si el backup podría contener malware latente. Priorizar restauración de datos a sistemas limpios.

##### Recuperar

*   **Restauración desde Copias de Seguridad:** Restaurar datos afectados desde último backup bueno conocido a sistemas limpios/reconstruidos. **Priorizar** restauración de sistemas y datos críticos para operaciones de **Secure Shield Pentesting S.L.** y servicios a clientes (portal cliente, informes recientes). **Escanear datos restaurados** antes de ponerlos en producción.
*   **Validación:** Verificar integridad de datos restaurados. Confirmar funcionamiento de aplicaciones y servicios. Involucrar a propietarios de sistemas y usuarios clave.
*   **Monitorización Intensiva:** Tras restauración, monitorizar sistemas recuperados y red para cualquier signo de actividad maliciosa recurrente. Mantener alertas de alta sensibilidad en Azure Sentinel/SIEM y EDR.
*   **Retorno Gradual a Operatividad:** Devolver sistemas a producción de manera gradual y controlada.

#### Comunicar

**Comunicación clara, factual y coordinada, especialmente si datos de clientes de Secure Shield Pentesting S.L. están involucrados.**

1.  **Interna (Secure Shield Pentesting S.L.):**
    *   **Equipo de Respuesta:** Comunicación continua en canales dedicados.
    *   **Dirección y Legal:** Actualizaciones regulares del IC sobre estado, impacto (clientes, reputación), decisiones críticas (no pago, tiempos de recuperación).
    *   **Empleados:** Comunicar lo necesario para asegurar cooperación (no usar ciertos sistemas, alerta a phishing) y gestionar moral. Evitar pánico.

2.  **Externa:**
    *   **Clientes Afectados (Prioridad Alta):** Si datos de clientes o acceso a informes se ven afectados, notificación crucial y probablemente obligatoria (RGPD). Coordinar con Legal. Ser transparente sobre incidente (sin detalles técnicos comprometedores), impacto en sus datos/servicios, acciones de **Secure Shield Pentesting S.L.** Ofrecer punto de contacto dedicado.
    *   **Reguladores (AEPD):** Si hay brecha de datos personales, notificar según plazos RGPD.
    *   **Fuerzas de Seguridad:** Reportar incidente. Pueden ofrecer asistencia o investigar.
    *   **Proveedores (ej. Microsoft Azure):** Si se requiere su asistencia técnica.
    *   **Aseguradora de Ciberriesgos:** Notificar según póliza de **Secure Shield Pentesting S.L.**
    *   **Público General/Medios (si es necesario):** Solo si incidente tiene impacto público amplio o riesgo de filtración a medios. Coordinar con PR/Dirección.

#### Recursos Específicos para Ransomware

*   [ID Ransomware](https://id-ransomware.malwarehunterteam.com/): Para identificar variante.
*   [NoMoreRansom.org](https://www.nomoreransom.org/): Herramientas de descifrado (a menudo para variantes antiguas).
*   Guías de respuesta a ransomware de agencias (CISA, NCSC, INCIBE).
*   Herramientas forenses y de análisis de malware internas o de confianza.

#### Consideraciones Adicionales para Secure Shield Pentesting S.L.

*   **Impacto Reputacional:** Un ataque de ransomware a una empresa de pentesting es particularmente dañino. La gestión de la comunicación es crítica.
*   **Herramientas de Pentesting:** Asegurar que herramientas y scripts propios de **Secure Shield Pentesting S.L.** no sean comprometidos o exfiltrados.
*   **Entornos de Cliente:** Si sistemas de **Secure Shield Pentesting S.L.** están conectados a entornos de cliente durante una auditoría, el riesgo de propagación debe ser considerado y contenido inmediatamente.
*   **Análisis Post-Incidente (AAR):** ¿Cómo fallaron controles preventivos? ¿Cómo mejorar detección y respuesta? ¿Son adecuados backups y plan de recuperación? ¿Necesita personal más formación? Actualizar este playbook y otros procedimientos.