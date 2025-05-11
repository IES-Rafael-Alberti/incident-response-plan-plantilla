### Playbook: Escaneo Activo (Reconocimiento)

**Objetivo:** Detectar, analizar y responder a actividades de escaneo activo contra la infraestructura de **Secure Shield Pentesting S.L.** (Azure, portal de cliente, IPs públicas) para prevenir ataques subsecuentes.

#### Investigar

1.  **Detección y Alertas:**
    *   **Logs de Firewall (Azure Firewall, NSGs, WAF, on-prem):** Buscar alto volumen de conexiones o paquetes denegados desde IPs específicas a múltiples puertos/hosts.
    *   **Logs de IDS/IPS:** Alertas sobre patrones de escaneo conocidos.
    *   **Logs de Servidores Web (Portal Cliente):** Intentos de enumeración de directorios, escaneo de vulnerabilidades web.
    *   **Azure Sentinel/SIEM:** Reglas de correlación para barridos de puertos, escaneos de red o múltiples intentos de conexión fallidos desde una fuente.
    *   **Análisis de Tráfico de Red:** Identificar flujos de datos inusuales, paquetes ICMP excesivos o conexiones a puertos no estándar.

2.  **Análisis de la Actividad de Escaneo:**
    *   **IPs de Origen:** Identificar IPs que escanean. Realizar geolocalización y análisis de reputación.
    *   **Objetivos del Escaneo:** ¿Qué IPs, hosts o servicios de **Secure Shield Pentesting S.L.** están siendo escaneados?
    *   **Tipos de Escaneo:** ¿Puertos (TCP SYN, UDP)? ¿Servicios? ¿Vulnerabilidades? ¿Enumeración de SO o aplicaciones?
    *   **Herramientas Utilizadas (Inferencia):** Inferir herramientas usadas por los atacantes basado en patrones de tráfico.
    *   **Duración e Intensidad:** ¿Escaneo rápido y ruidoso o lento y sigiloso?
    *   **Correlación con otras Amenazas:** ¿Escaneo aislado o precede a intentos de explotación?

3.  **Evaluación de la Exposición:**
    *   Verificar si servicios/puertos escaneados que respondieron están intencionalmente expuestos y debidamente securizados y parcheados.
    *   Si se detecta escaneo de vulnerabilidades, revisar internamente si esas vulnerabilidades existen en los sistemas objetivo.

#### Remediar

**Objetivo:** Bloquear escaneo no deseado, reducir superficie de ataque y prepararse para posibles ataques de seguimiento.

##### Preparación (Proactiva y Continua)

*   **Minimizar Superficie de Ataque:**
    *   Asegurar que solo puertos y servicios necesarios estén expuestos a Internet.
    *   Usar Azure Bastion para acceso administrativo a VMs en Azure en lugar de exponer RDP/SSH.
    *   Revisar y restringir reglas en Azure NSGs y Firewalls on-premise.
*   **Hardening de Sistemas:** Aplicar configuraciones seguras a sistemas expuestos.
*   **Gestión de Vulnerabilidades:** Realizar escaneos internos regulares y parchear proactivamente.
*   **Configuración de IDS/IPS y WAF:** Asegurar actualización y configuración para detectar/bloquear patrones de escaneo.
*   **Eliminar Banners Innecesarios:** No revelar versiones de software o detalles del sistema en banners.

##### Contener

1.  **Bloqueo de IPs de Origen:**
    *   Bloquear IPs origen del escaneo en firewalls perimetrales, Azure Firewall/NSGs y WAF.
    *   Si el escaneo es persistente desde IPs de una misma red/proveedor, considerar bloqueo de rangos más amplios (con precaución).
2.  **Rate Limiting:** Implementar o ajustar rate limiting en firewalls o servidores web para ralentizar escáneres automáticos.
3.  **Tecnologías de Engaño (Opcional Avanzado):**
    *   Desplegar honeypots para atraer y analizar actividad de escáneres, obteniendo inteligencia sin exponer sistemas reales de **Secure Shield Pentesting S.L.**

##### Erradicar

*   En un escaneo activo, "erradicar" es eliminar vulnerabilidades o exposiciones que el escaneo podría revelar.
*   **Parchear Vulnerabilidades Identificadas:** Si el análisis o revisión interna revela vulnerabilidades, priorizar su parcheo.
*   **Corregir Configuraciones Inseguras:** Ajustar reglas de firewall, configuraciones de servicios o permisos que exponen innecesariamente a **Secure Shield Pentesting S.L.**
*   **Revisión de Cuentas y Accesos:** Asegurar que no existan cuentas por defecto o con contraseñas débiles en servicios expuestos.

##### Recuperar

*   "Recuperar" de un escaneo es volver a monitorización normal y asegurar preparación para ataques futuros.
*   **Validar Bloqueos:** Confirmar que IPs bloqueadas ya no acceden a sistemas de **Secure Shield Pentesting S.L.**
*   **Monitorización Intensificada:** Continuar monitorizando tráfico desde IPs bloqueadas y estar alerta a escaneos desde nuevas fuentes.
*   **Revisión de Postura de Seguridad:** Usar información del escaneo para revisar la superficie de ataque externa de **Secure Shield Pentesting S.L.** y mejorar defensas.

#### Comunicar

1.  **Comunicación Interna (Secure Shield Pentesting S.L.):**
    *   **Equipo SOC/Seguridad:** Compartir información sobre IPs origen, objetivos y tipos de escaneo. Documentar incidente.
    *   **Administradores de Sistemas/Red:** Informar sobre IPs bloqueadas y cambios de configuración.
    *   **IC/Dirección (si escaneo es persistente, dirigido o preludio de ataque mayor):** Informar sobre actividad y medidas.
2.  **Comunicación Externa (Generalmente no necesaria para escaneos simples):**
    *   **ISP/Proveedor de Hosting de IP Origen (Abuse Report):** Si el escaneo es malicioso y persistente, enviar reporte de abuso.
    *   **Autoridades:** Solo si el escaneo es parte de campaña de ataque más amplia o hay sospechas de intenciones criminales graves.
    *   **Clientes:** No suele ser necesario, a menos que afecte disponibilidad o seguridad de sus servicios (ej. portal cliente ralentizado por escaneo agresivo).

#### Información Adicional

1.  **MITRE ATT&CK - Reconnaissance:** (Tácticas TA0043 y TA0042)
    *   T1595: Active Scanning (y sub-técnicas como T1595.001 Scanning IP Blocks, T1595.002 Vulnerability Scanning).
2.  **Herramientas Comunes de Escaneo:** Nmap, Masscan, Zmap, Nessus, Nikto, Dirb, SQLMap.
3.  **No confundir escaneo con pentesting autorizado:** **Secure Shield Pentesting S.L.** realiza estas actividades para clientes. Asegurar que la actividad detectada no sea un ejercicio autorizado.