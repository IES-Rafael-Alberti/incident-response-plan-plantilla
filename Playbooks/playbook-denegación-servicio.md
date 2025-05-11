### Playbook: Denegación de Servicio (DoS/DDoS)

**Objetivo:** Detectar, mitigar y recuperar los servicios expuestos de **Secure Shield Pentesting S.L.** (portal de cliente web, APIs, infraestructura Azure) y dispositivos finales críticos afectados por ataques de Denegación de Servicio (DoS) o Denegación de Servicio Distribuido (DDoS).

#### Investigar

1.  **Detección y Alerta Temprana:**
    *   **Monitorización de Disponibilidad:** Revisar alertas de herramientas de monitorización (Azure Monitor, UptimeRobot) que indiquen inaccesibilidad o alta latencia del portal de cliente o APIs.
    *   **Alertas de Protección DDoS/WAF:** Analizar alertas de Azure DDoS Protection o Web Application Firewall (WAF) sobre ataques detectados.
    *   **Logs de Servidores Web/Aplicación:** Buscar aumento masivo de solicitudes, errores de conexión o timeouts.
    *   **Métricas de Red y Servidores:** Observar picos en el uso de CPU, memoria, ancho de banda o número de conexiones (Azure Monitor, contadores de rendimiento on-premise).
    *   **Reportes de Clientes/Usuarios:** Atender reportes de clientes de **Secure Shield Pentesting S.L.** sobre dificultades para acceder al portal.
    *   **DoS a Dispositivos Finales:** Investigar reportes de pentesters sobre lentitud extrema o falta de respuesta de red en estaciones de trabajo o servidores de prueba, posiblemente por inundación de paquetes.

2.  **Análisis del Ataque:**
    *   **Confirmar Tipo de Ataque:** Determinar si es DDoS (múltiples fuentes) o DoS (pocas fuentes). Identificar si es volumétrico (inundación UDP, ICMP), de protocolo (SYN flood) o de capa de aplicación (HTTP flood, abuso de API).
    *   **Objetivos del Ataque:** Especificar qué servicios de **Secure Shield Pentesting S.L.** son el objetivo (portal cliente, IPs de VMs en Azure, servidores on-prem).
    *   **IPs de Origen:** Identificar IPs de origen (si es DoS o DDoS con fuentes identificables). Analizar su reputación. Para DDoS a gran escala, esto puede ser complejo.
    *   **Características del Tráfico:** Analizar protocolos (TCP, UDP, ICMP, HTTP/S), puertos de origen/destino, tamaño de paquetes, patrones de solicitud (ej. peticiones HTTP GET/POST específicas) y user-agents (para ataques de capa de aplicación).
    *   **Impacto Actual:** Evaluar qué servicios están degradados o caídos y el impacto en clientes y operaciones internas de **Secure Shield Pentesting S.L.**

3.  **Escalado Inmediato a Equipo de Respuesta y Proveedores:**
    *   Activar el equipo de respuesta a incidentes.
    *   Contactar al proveedor de servicios de mitigación DDoS (ej. Azure si se usa su servicio, o un proveedor externo).

#### Remediar

**Objetivo:** Mitigar el ataque rápidamente para restaurar la disponibilidad, identificar la fuente si es posible y fortalecer las defensas.

##### Contener (Mitigación Activa)

1.  **Activación/Ajuste de Servicios de Mitigación DDoS:**
    *   **Azure DDoS Protection:** Asegurar su habilitación para los VNETs relevantes. Ajustar políticas si es necesario.
    *   **Azure WAF:** Implementar o ajustar reglas para bloquear tráfico malicioso de capa de aplicación (rate limiting por IP, bloqueo de user-agents sospechosos, geo-bloqueo si aplica).
    *   **Proveedor de Mitigación DDoS Externo:** Seguir sus procedimientos para activar la mitigación (ej. cambiar DNS para enrutar tráfico a través de su scrubbing center).
2.  **Filtrado de Tráfico en el Perímetro:**
    *   **Firewalls (Azure Firewall, on-prem):** Implementar ACLs para bloquear IPs de origen conocidas del ataque (más efectivo para DoS o DDoS pequeños).
    *   **Null Routing (Blackholing):** Si una IP de **Secure Shield Pentesting S.L.** sufre un ataque masivo y no es crítica, el ISP podría ofrecer hacer null routing.
3.  **Optimización de Servidores y Aplicaciones:**
    *   **Escalado de Recursos (Azure):** Aumentar temporalmente la capacidad de VMs, App Services, bases de datos para absorber parte del tráfico (si el ataque no es puramente volumétrico y los costos son manejables).
    *   **Ajustes de Configuración del Servidor Web:** Optimizar timeouts, límites de conexión.
    *   **Uso de CDN (Content Delivery Network):** Considerar su implementación para el portal de cliente si no se usa, para absorber tráfico distribuido y reducir carga en servidores de origen.
4.  **DoS a Dispositivos Finales:**
    *   Aislar el dispositivo de la red.
    *   Analizar tráfico entrante para identificar la fuente y bloquearla en el firewall local o de red.

##### Erradicar

*   En un DDoS, "erradicar" implica neutralizar fuentes de ataque y eliminar vulnerabilidades que facilitan ataques de capa de aplicación.
*   **Identificación de Botnets/Fuentes Persistentes:** Trabajar con proveedores de mitigación e inteligencia de amenazas para identificar y reportar botnets o fuentes de ataque persistentes.
*   **Parcheo de Vulnerabilidades de Aplicación:** Si el ataque explota debilidades en el portal de cliente o APIs, parchearlas.
*   **Bloqueo Proactivo:** Añadir a listas de bloqueo permanentes IPs/rangos que consistentemente participan en ataques.

##### Recuperar

1.  **Restauración de Servicios:**
    *   Tras mitigar el ataque, verificar que todos los servicios funcionen normalmente.
    *   Desescalar recursos de Azure si se aumentaron temporalmente.
2.  **Monitorización Post-Ataque:**
    *   Continuar monitorizando tráfico y rendimiento de servicios para detectar resurgimiento del ataque o ataques secundarios.
3.  **Análisis Forense del Ataque:**
    *   Analizar logs y datos del ataque para entender tácticas del atacante, vulnerabilidades explotadas y efectividad de las defensas.
4.  **Mejora de la Postura de Defensa DDoS:**
    *   Basado en el análisis, ajustar configuraciones de WAF, Azure DDoS Protection, CDN.
    *   Considerar servicios de mitigación más robustos si los actuales fueron insuficientes.
    *   Revisar arquitectura de la aplicación para hacerla más resiliente a ataques de capa de aplicación.

#### Comunicar

1.  **Comunicación Interna (Secure Shield Pentesting S.L.):**
    *   **IC, Equipo de Seguridad, SOC, Admins de Red/Azure, Dirección, Legal:** Comunicación constante sobre estado del ataque, impacto y medidas de mitigación.
    *   **Equipos de Desarrollo (si es ataque a capa de aplicación):** Para identificar y parchear vulnerabilidades.
    *   **Soporte al Cliente/Comunicaciones (si el portal está afectado):** Para preparar mensajes y manejar consultas.
2.  **Comunicación Externa:**
    *   **Clientes (Si portal o APIs están inaccesibles/degradados):**
        *   Notificación proactiva sobre la interrupción.
        *   Actualizaciones periódicas sobre mitigación y restauración.
        *   Asegurarles que **Secure Shield Pentesting S.L.** trabaja para resolverlo. Informar sobre el impacto en el servicio, no necesariamente detalles técnicos del ataque.
    *   **Proveedores de Mitigación DDoS / ISP / Microsoft Azure:** Coordinación técnica para mitigación.
    *   **Autoridades (Raro para DDoS, salvo casos extremos):** Considerar si es necesario.
    *   **Página de Estado del Servicio (si existe):** Actualizar con estado del incidente.

#### Recursos

*   **Azure DDoS Protection, Azure WAF, Azure Firewall, Azure Monitor.**
*   **Servicios de CDN (ej. Azure CDN, Cloudflare).**
*   **Herramientas de análisis de tráfico de red (Wireshark, tcpdump) y logs.**
*   **Contactos de Soporte de Proveedores de Mitigación DDoS, ISP, Microsoft Azure.**
*   **Plan de Continuidad del Negocio (BCP) de Secure Shield Pentesting S.L.**
*   **Equipo de Respuesta a Incidentes y SOC de Secure Shield Pentesting S.L.**