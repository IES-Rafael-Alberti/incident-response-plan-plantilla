
## Playbook: Denegación de Servicio en Internet (DDoS)

### Investigar

El procedimiento de respuesta a un ataque de denegación de servicio (DDoS) comienza con el monitoreo constante del tráfico de red. Este monitoreo tiene como objetivo identificar cualquier anomalía que pueda surgir. Algunos ejemplos de estas anomalías podrían ser picos inusuales en la cantidad de tráfico, la presencia de paquetes maliciosos o patrones de actividad que resulten sospechosos. Todos estos pueden ser indicativos de un intento de ataque a la red.

El siguiente paso es la revisión y análisis de los logs del servidor. Los logs son registros que mantienen un seguimiento de toda la actividad que ocurre en el servidor, y son una fuente valiosa de información para identificar posibles amenazas a la seguridad. Durante el análisis, es importante buscar signos de intentos de acceso maliciosos, solicitudes repetidas desde una misma dirección IP o cualquier otro comportamiento que pueda considerarse anómalo. Estos pueden ser signos de un ataque en proceso o de un intento de invasión.

La última etapa involucra el seguimiento de las alertas de seguridad. Estas alertas son generadas por sistemas de detección de intrusiones (IDS) o sistemas de prevención de intrusiones (IPS). Estos sistemas son vitales para la seguridad de la red ya que pueden identificar y alertar sobre posibles ataques de denegación de servicio. Es crucial estar atento a estas alertas y tomar las medidas necesarias para mitigar cualquier ataque que pueda estar en curso.

En resumen, la respuesta a un ataque de denegación de servicio es un proceso que requiere vigilancia constante, análisis detallado y reacción rápida para garantizar la seguridad y la continuidad del servicio.

### Remediar

- **Implementación de Filtros de Tráfico:**

Configurar y activar filtros de tráfico para bloquear paquetes maliciosos y mitigar el impacto de los ataques de denegación de servicio.

- **Actualización de Firmas de IDS/IPS:**

Mantener actualizadas las firmas de IDS/IPS para detectar y bloquear nuevos tipos de ataques de denegación de servicio.

- **Redirección de Tráfico:**

Utilizar técnicas de redirección de tráfico para desviar el tráfico malicioso lejos de los sistemas críticos y mantener la disponibilidad de los servicios.

#### Contener

- **Bloqueo de IPs Maliciosas:**

Bloquear las direcciones IP identificadas como origen del ataque de denegación de servicio para evitar futuros intentos de ataque desde esas direcciones.

- **Segmentación de Red:**

Segmentar la red para limitar el impacto de los ataques de denegación de servicio y aislar los sistemas críticos del resto de la infraestructura.

#### Erradicar

- **Identificar Origen del Ataque:**

Investigar y identificar el origen del ataque de denegación de servicio, ya sea mediante el análisis de registros de red o la colaboración con proveedores de servicios de Internet (ISP).

- **Mejora de Políticas de Seguridad:**

Actualizar las políticas de seguridad para incluir medidas específicas para prevenir y mitigar ataques de denegación de servicio en el futuro.

### Recuperar

- **Restauración de Servicios:**

Restaurar los servicios afectados por el ataque de denegación de servicio tan pronto como sea posible para minimizar el impacto en la operación del negocio.

- **Análisis Post-Mortem:**

Realizar un análisis exhaustivo después del ataque para identificar las vulnerabilidades explotadas y tomar medidas para fortalecer la infraestructura de seguridad y prevenir futuros ataques similares.

### Comunicar

- **Notificar a las Partes Interesadas:**

Informar a las partes interesadas sobre el ataque de denegación de servicio, las medidas tomadas para mitigar el impacto y las acciones adicionales que se están tomando para fortalecer la seguridad.

- **Alertar a la Dirección:**

Comunicar a la dirección sobre el incidente de denegación de servicio, resaltando los riesgos para la operación del negocio y las medidas implementadas para proteger los sistemas y datos.

- **Coordinar con Proveedores de Servicios:**

Colaborar con proveedores de servicios de Internet y otros proveedores externos para compartir información sobre el ataque y coordinar esfuerzos para defenderse contra futuros ataques de denegación de servicio.

### Recursos

- Referencia: Guía de Buenas Prácticas de Seguridad de DDoS del National Institute of Standards and Technology (NIST)
- Referencia: Herramientas de Monitoreo de Red y Seguridad
- "Mitigación de Ataques de Denegación de Servicio: Estrategias y Prácticas Recomendadas"
