### Playbook: Exfiltración de Datos

**Objetivo:** Detectar, investigar, contener y remediar incidentes de exfiltración de datos, protegiendo la información confidencial de **Secure Shield Pentesting S.L.** y de sus clientes (especialmente informes de vulnerabilidades).

#### Investigar

1.  **Detección y Alerta Temprana:**
    *   **Alertas de DLP:** Monitorizar alertas de soluciones DLP (endpoints, red, cloud como Microsoft Purview) sobre movimiento no autorizado de datos sensibles (ej. "Informe Cliente Confidencial").
    *   **Alertas de SIEM/Azure Sentinel:** Correlacionar eventos que sugieran exfiltración (grandes transferencias a destinos externos inusuales, acceso a repositorios críticos seguido de actividad de red saliente).
    *   **Monitorización del Tráfico de Red:** Buscar patrones anómalos (NetFlow, PCAP, Azure NSG Flow Logs, Azure Firewall logs):
        *   Conexiones a IPs/dominios conocidos de C2 o almacenamiento anónimo.
        *   Grandes volúmenes de datos salientes (especialmente fuera de horas laborales o a destinos geográficos inesperados).
        *   Uso de protocolos no estándar o encapsulamiento (DNS tunneling, ICMP).
    *   **Logs de EDR/Endpoint:** Actividad de procesos sospechosos accediendo a archivos sensibles y realizando conexiones de red. Uso de herramientas de archivado/compresión en grandes volúmenes de datos.
    *   **Logs de Acceso a Recursos Sensibles:** Auditar logs de acceso a Azure Storage (Blob, Files) donde se almacenan informes de clientes. Revisar logs de bases de datos del portal de cliente o sistemas internos. Logs de acceso a servidores de archivos on-premise.
    *   **Reportes de Usuarios o Fuentes Externas:** Un cliente podría reportar la aparición de sus datos, o una fuente de inteligencia de amenazas podría alertar.

2.  **Análisis Forense y Determinación del Alcance:**
    *   **Datos Exfiltrados:** ¿Qué datos específicos? ¿Informes de qué clientes? ¿Volumen? ¿Sensibilidad?
    *   **Origen Interno:** ¿Desde qué sistema(s) o cuenta(s) se originó? (Endpoint de pentester, servidor comprometido, cuenta Azure).
    *   **Destino Externo:** ¿A dónde se enviaron los datos? (IP, dominio, servicio cloud).
    *   **Método de Exfiltración:** ¿Cómo se sacaron? (Transferencia directa, malware C2, subida a cloud anónimo, USB, email).
    *   **Vector de Compromiso Inicial:** Si es resultado de un compromiso previo, determinar cómo ocurrió. Activar playbook correspondiente.
    *   **Cronología:** ¿Cuándo comenzó, cuánto duró, cuándo se detectó?
    *   **Escaneo de Malware:** En sistemas sospechosos de origen.

#### Remediar

**Objetivo:** Detener la exfiltración, recuperar control de datos (si es posible), eliminar acceso del atacante y prevenir futuras exfiltraciones.

##### Contener

1.  **Bloquear Canal de Exfiltración:** Bloquear IPs/dominios de destino en firewalls (perimetrales, Azure Firewall/NSGs, proxies). Restringir protocolo usado. Deshabilitar cuentas comprometidas usadas.
2.  **Aislar Sistemas Comprometidos:** Desconectar de red endpoints/servidores origen. Restringir acceso a repositorios de datos sensibles desde sistemas sospechosos.
3.  **Preservar Evidencia:** Tomar imágenes forenses y logs antes de acciones destructivas de remediación.
4.  **Evaluar Cierre de Servicios:** Si la exfiltración es masiva y afecta servicios críticos (portal cliente), considerar cierre temporal tras consulta con IC y Dirección.

##### Erradicar

1.  **Eliminar Acceso del Atacante:** Eliminar malware, backdoor o persistencia. Restablecer credenciales comprometidas. Parchear vulnerabilidades.
2.  **Reforzar Controles de Acceso:** Aplicar mínimo privilegio a cuentas y servicios que acceden a datos sensibles. Implementar/mejorar clasificación de datos y políticas DLP.
3.  **Seguridad de Red y Endpoints:** Mejorar monitorización de tráfico saliente. Asegurar EDR configurados para detectar/bloquear exfiltración. Considerar inspección de contenido en perímetro.

##### Recuperar

1.  **Recuperación de Datos (Si aplica y es posible):** Restaurar desde backups limpios si datos fueron eliminados/corrompidos. La recuperación se centra más en asegurar entorno y datos restantes que en "recuperar" datos ya filtrados.
2.  **Validación del Entorno:** Confirmar eliminación de accesos no autorizados y limpieza de sistemas. Realizar escaneos de vulnerabilidad y pentesting interno en áreas afectadas.
3.  **Revisión y Mejora de Políticas:** Actualizar políticas de manejo de datos, acceso remoto, uso de cloud, basadas en lecciones aprendidas. Reforzar formación sobre protección de datos sensibles.
4.  **Notificación y Gestión de Brecha (Legal y Comunicación):** Parte CRÍTICA de la recuperación para **Secure Shield Pentesting S.L.**

#### Comunicar

**Comunicación VITAL si se exfiltraron datos de clientes o informes de vulnerabilidades.**

1.  **Interna (Secure Shield Pentesting S.L.):**
    *   **IC, Dirección, Legal, Equipo de Seguridad, SMEs:** Comunicación constante y detallada.
    *   **Puntos clave:** Qué datos se exfiltraron, de qué clientes, cómo, impacto potencial, estado de contención/erradicación.
2.  **Externa:**
    *   **Clientes Afectados (OBLIGATORIO si sus datos fueron exfiltrados):** Notificación proactiva, clara y transparente coordinada con Legal. Detallar información comprometida, riesgos, acciones de **Secure Shield Pentesting S.L.** Ofrecer soporte y canal dedicado.
    *   **Autoridades (AEPD y otras):** Notificar brecha de datos personales según RGPD (72h si hay riesgo). Colaborar con investigación.
    *   **Fuerzas de Seguridad:** Reportar el delito.
    *   **Aseguradora de Ciberriesgos:** Activar póliza y seguir procedimientos.
    *   **Público/Medios (Evaluar con Dirección y Legal):** Si incidente es público o impacto reputacional severo. Preparar comunicados factuales.
    *   **Gestión de Crisis de Imagen:** Esencial para una empresa de ciberseguridad.

#### Recursos

*   **Soluciones DLP (Microsoft Purview, EDR, Network Firewalls).**
*   **Azure Sentinel / SIEM.**
*   **Herramientas de Análisis Forense de Red y Host.**
*   **Plataformas de Inteligencia de Amenazas.**
*   **Política de Clasificación y Manejo de Datos de Secure Shield Pentesting S.L.**
*   **Procedimientos de Notificación de Brechas de Datos (RGPD).**
*   **Equipo Legal y de Comunicaciones de Secure Shield Pentesting S.L.**