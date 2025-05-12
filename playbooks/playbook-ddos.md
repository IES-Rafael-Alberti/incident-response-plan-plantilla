# Playbook: Ataque DDoS

**Investiga, remedia (contén, erradica) y comunica en paralelo.**

Asigna pasos a individuos o equipos para que avancen en paralelo cuando sea posible; este playbook no es puramente secuencial. Usa tu mejor criterio.

---

## Investigar

1. **Detecta el incidente y confirma que se trata de un DDoS**
    * Verifica alertas automáticas de monitorización de red, SIEM, firewall, IDS/IPS, herramientas de WAF o servicios de protección cloud (Cloudflare, Akamai, etc.).
    * Analiza reportes de usuarios sobre lentitud, caídas del servicio, imposibilidad de acceder a recursos web o aplicaciones corporativas.
    * Observa incrementos anómalos y sostenidos del tráfico, picos de solicitudes, saturación de ancho de banda, o conexiones concurrentes inusuales.

2. **Determina el vector, tipo y el alcance del ataque**
    * ¿El ataque es volumétrico, de agotamiento de recursos (SYN flood, UDP flood) o de capa de aplicación (HTTP flood, Slowloris, etc.)?
    * ¿Qué servicios, aplicaciones, APIs o direcciones IP están siendo atacados?
    * ¿El tráfico malicioso proviene de una única fuente, de botnets (direcciones IP distribuidas geográficamente) o de servicios cloud?
    * ¿Existen patrones repetitivos o firmas en los paquetes maliciosos?
    * ¿El ataque es continuado, intermitente, de intensidad variable, o amenaza con escalada (“ransom DDoS”)?

3. **Recopila y preserva evidencias digitales**
    * Captura paquetes de red (PCAP), logs de firewall, balanceadores, IDS/IPS, WAF, y servidores afectados.
    * Identifica las IPs de origen, indicadores de compromiso, y correlaciona con fuentes de threat intelligence.
    * Documenta la hora de inicio, los picos de tráfico, servicios afectados y acciones tomadas en tiempo real.

4. **Plantéate preguntas clave y estrategias de investigación:**
    * ¿Cuándo y cómo empezó el ataque? ¿Hay eventos previos relacionados (extorsión, amenazas, campañas en foros)?
    * ¿Cuáles son los objetivos prioritarios atacados? ¿Afecta sólo a la web, también a VPN/correo/otros servicios?
    * ¿El DDoS busca interrumpir un evento, periodo de alta demanda, o es un ataque oportunista?
    * ¿Qué impacto económico o reputacional tiene para la organización?
    * ¿Han intentado los atacantes comunicarse, exigir rescate o dejar mensajes?

**Herramientas recomendadas:** Wireshark, tcpdump, firewall/router logs, SIEM, WAF logs, dashboards de servicios anti-DDoS, portales cloud, herramientas de análisis de tráfico (Netflow/Sflow), y sistemas de threat intelligence.

---

## Remediar

* **Planifica los eventos de remediación** para ejecutarse en paralelo o coordinados, con equipos preparados y personal involucrado en infraestructuras críticas.
* **Valora el momento de cada acción:** algunas medidas pueden afectar la operativa normal o requerir interrupción temporal de servicios.

### Contención

1. **Activa/despliega servicios de protección anti-DDoS:**  
   * Redirige el tráfico hacia servicios en la nube especializados (Cloudflare, Akamai, AWS Shield, Azure DDoS Protection, etc.).
2. **Configura reglas en firewall, routers, balanceadores y WAF para filtrar, limitar o bloquear el tráfico malicioso.**
   * Filtra por IP, rangos, geolocalización, protocolos, patrones comunes de ataques.
3. **Aumenta la capacidad y la redundancia de la infraestructura si es posible:**  
   * Escala horizontalmente (balanceo, instancias adicionales, CDN, caches).
4. **Aísla o desconecta temporalmente los sistemas colapsados para evitar efecto dominó (particularmente si la red es compartida con otros servicios críticos).**
5. **Prioriza servicios esenciales, limitando o deshabilitando recursos no prioritarios para liberar ancho de banda y recursos.**
6. **Solicita soporte al proveedor ISP y a los servicios cloud para aplicar contra-medidas a nivel de backbone.**
7. **Implementa listas negras automáticas y mecanismos de rate limiting en los dispositivos de borde.**
8. **Informa a los usuarios internos y técnicos sobre la situación, medidas en curso y posibles restricciones temporales.**

**Herramientas y procedimientos:**  
- Consolas de firewall, balanceadores, WAF, SIEM, portales de servicios anti-DDoS, scripts automatizados de bloqueo, colaboración directa con el proveedor de Internet.

---

### Erradicación

1. **Revisa y elimina reglas de bloqueo/filtrado temporales una vez mitigado el ataque, normalizando la infraestructura.**
2. **Analiza la infraestructura para detectar posibles persistencias, configuraciones alteradas o puertas traseras dejadas por los atacantes.**
3. **Asegura el “hardening” de los sistemas expuestos: actualiza firmware, configura límites de conexiones, verifica la resiliencia de aplicaciones (timeouts, conexiones simultáneas, etc).**
4. **Realiza un barrido de los logs para identificar posibles ataques paralelos (pivotes, intentos de explotación durante el DDoS).**
5. **Actualiza y revisa las políticas de protección, reglas, scripts y procedimientos, aprendiendo de la experiencia y ajustando controles.**

---

## Recuperar

1. **Verifica la restauración completa de los servicios afectados y monitoriza su estabilidad durante al menos 48-72h tras el ataque.**
2. **Informa a los usuarios y clientes internos/externos sobre la finalización del ataque y la restauración de servicios.**
3. **Analiza el impacto: calcula tiempos de caída, pérdida de negocio, coste de mitigación, daño reputacional y otros indicadores clave.**
4. **Realiza un análisis post-mortem con todos los equipos involucrados para extraer lecciones aprendidas.**
5. **Actualiza y refuerza procedimientos de continuidad de negocio y disaster recovery con lo aprendido durante el ataque.**
6. **Genera y almacena informes detallados para auditoría, aseguradora y posible denuncia a las autoridades.**

---

### Prevención y reducción de riesgos

1. Contrata y configura servicios de mitigación y protección DDoS a nivel de red y aplicación antes de necesitarlo (CDN, cloud anti-DDoS, WAF).
2. Segmenta y prioriza la red para limitar el impacto de ataques volumétricos.
3. Configura limitadores de tasa, reglas anti-abuso y listas negras automáticas en dispositivos de borde y aplicaciones.
4. Realiza pruebas periódicas de estrés y simulacros de ataque DDoS (tabletop, análisis de capacidad y respuesta).
5. Mantén redundancia de conexiones y proveedores de Internet.
6. Actualiza y revisa firmware y software de red regularmente.
7. Sensibiliza a los equipos técnicos y de negocio sobre riesgos y señales de ataque DDoS.
8. Documenta y comunica internamente el procedimiento de escalado y contacto urgente con el ISP y vendors.
9. Desarrolla protocolos de comunicación interna y externa específicos para ataques de disponibilidad.
10. Prepara respuestas de atención al cliente y plan de contingencia para los usuarios.

---

### Referencia: Recursos para la remediación

- Personal de IT, ciberseguridad e infraestructura de red.
- Acceso a consolas de firewalls, balanceadores, WAF, portales de mitigación y colaboración directa con proveedores.
- Soporte técnico urgente del ISP y de servicios anti-DDoS cloud.
- Manuales y guías de fabricantes de hardware/software de red.
- Contacto con aseguradora y equipos de respuesta a incidentes.

---

## Comunicar

1. **Escala el incidente y comunica con dirección, responsables de IT y seguridad, y proveedores según el plan de crisis.**
2. **Documenta detalladamente el incidente, acciones tomadas y enlaces a logs, informes y comunicaciones con proveedores.**
3. **Consulta con legal/compliance sobre obligaciones (por ejemplo, si la caída de un servicio afecta a compromisos contractuales).**
4. **Informa a los usuarios internos y a departamentos críticos sobre la situación, restricciones y plazos estimados de recuperación.**
5. **Prepara mensajes claros y no alarmistas para clientes o proveedores externos si el ataque ha afectado su servicio.**
6. **Contacta la aseguradora si existe y si el evento es reclamable.**
7. **Informa a autoridades si el ataque ha supuesto daños graves o extorsión (INCIBE, Guardia Civil, Policía Nacional, según el país).**
8. **Coordina notificaciones y comunicación con vendors de infraestructura y servicios (cloud, red, seguridad).**
9. **Registra toda la comunicación y asegúrate de que puede auditarse y usarse para aprendizaje futuro.**

---

## Recursos

### Acciones recomendadas para usuarios ante un ataque DDoS

1. Mantén la calma y reporta cualquier síntoma de caída o lentitud de servicios.
2. No intentes restablecer conexiones o sistemas sin instrucciones del equipo de IT/seguridad.
3. Anota cuándo y cómo has experimentado problemas de acceso (hora, IP, servicio).
4. No difundas rumores o información no confirmada; atiende solo a la comunicación oficial.
5. Coopera con IT proporcionando detalles para el diagnóstico (IPs, capturas de pantalla).

### Acciones recomendadas para el helpdesk

1. Abre un ticket e identifica de inmediato si el incidente afecta a múltiples usuarios o servicios.
2. Recoge información precisa sobre: hora, IP/servicio afectado, tipo de síntoma (caída, lentitud, mensajes de error).
3. Escala el incidente urgentemente al equipo de red/ciberseguridad.
4. Informa periódicamente a los usuarios internos del estado del servicio.
5. Documenta todas las comunicaciones y acciones para informes posteriores.

---

### Información adicional

1. [Cloudflare – Qué es un ataque DDoS](https://www.cloudflare.com/es-es/learning/ddos/what-is-a-ddos-attack/)
2. [MITRE ATT&CK: T1499 Endpoint Denial of Service](https://attack.mitre.org/techniques/T1499/)