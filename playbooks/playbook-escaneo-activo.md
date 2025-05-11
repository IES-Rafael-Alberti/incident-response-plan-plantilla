# Playbook: Escaneo activo

**¡Investigar, remediar (contener, erradicar) y comunicarse en paralelo! El escaneo activo puede ser indicio de una fase temprana de intrusión; priorice su análisis y contención.**

Asigne pasos a personas o equipos para que trabajen simultáneamente, siempre que sea posible.

## Investigar

`Objetivo: Determinar el tipo de escaneo, su origen, alcance e intención. Evaluar el riesgo para priorizar la respuesta.`

1. **Detectar y confirmar actividad de escaneo activo:**

   * Revisar alertas del IDS/IPS y registros de firewall.
   * Analizar logs de red y sistemas para identificar:

     * Conexiones a puertos inesperados.
     * Múltiples intentos de conexión fallidos.
     * Actividad inusual desde direcciones IP externas.
   * Verificar si el escaneo corresponde a actividades internas legítimas (p. ej., escaneos programados por el equipo de seguridad).

2. **Determinar el origen del escaneo:**

   * Identificar la dirección IP o rango de IPs fuente.
   * Revisar patrones de tráfico con herramientas como Wireshark o Zeek.

3. **Analizar el tipo de escaneo:**

   * Determinar si es escaneo de puertos, servicios, vulnerabilidades, etc.
   * Verificar herramientas utilizadas, si es posible (Nmap, Masscan, Nessus, etc.).

4. **Evaluar el impacto y el riesgo potencial:**

   * Identificar qué sistemas fueron objetivo del escaneo.
   * Analizar si alguno de los sistemas presenta vulnerabilidades conocidas.
   * Valorar si se detectaron intentos de explotación posteriores.

## Remediar

### Contener

`Objetivo: Limitar la exposición y prevenir escaneos adicionales o posteriores intentos de explotación.`

* Bloquear la dirección IP o el rango sospechoso en el firewall.
* Configurar el IDS/IPS para alertar o bloquear patrones similares de escaneo.
* Aislar temporalmente sistemas objetivo si presentan actividad inusual o están bajo ataque persistente.
* Limitar el acceso externo a servicios innecesarios y reforzar la segmentación de red.
* Revisar reglas de acceso a red, NAT y VPN que pudieran estar permitiendo tráfico no deseado.

### Erradicar

`Objetivo: Eliminar vulnerabilidades expuestas por el escaneo y reducir el riesgo de futuras intrusiones.`

* Aplicar parches y actualizaciones de seguridad a los sistemas objetivo del escaneo.
* Realizar análisis de malware en sistemas que hayan sido objeto de actividad sospechosa posterior.
* Verificar la inexistencia de puertas traseras u otros vectores persistentes.
* Implementar medidas de hardening adicionales: deshabilitar servicios innecesarios, modificar banners, aplicar ACLs, etc.
* Reforzar detecciones basadas en los IoCs extraídos del incidente.

## Comunicar

`Objetivo: Asegurar que todas las partes relevantes estén informadas y puedan colaborar efectivamente en la respuesta.`

* Notificar al equipo de seguridad y al SOC sobre la detección y análisis del escaneo.
* Escalar el incidente al equipo de gestión si se determina que hay riesgo elevado o actividad persistente.
* Documentar el incidente de acuerdo con el procedimiento interno.
* Comunicar a los administradores de sistemas/red las acciones de contención y mitigación necesarias.
* Si corresponde, informar a los proveedores externos o equipos encargados de infraestructura compartida.
* Evaluar si se debe notificar a terceros, como CERTs o entidades regulatorias (si el escaneo afecta infraestructura crítica o está vinculado a campañas conocidas).

## Recuperar

`Objetivo: Asegurar la estabilidad y seguridad operativa tras el incidente.`

* Verificar que los servicios o sistemas afectados funcionen normalmente tras las acciones de contención.
* Confirmar que las medidas de seguridad adicionales implementadas no afectan operaciones legítimas.
* Evaluar la necesidad de realizar escaneos internos (de vulnerabilidades y exposición) para prevenir nuevos intentos de escaneo o explotación.
* Actualizar firmas y reglas en IDS/IPS, WAF y otras soluciones de seguridad en base al incidente.
* Realizar pruebas de penetración o auditorías internas para validar el estado de seguridad de los sistemas expuestos.

## Recursos

### Ejemplos de TTPs

* Escaneo de red y puertos (Nmap, Masscan).
* Huella de host (ICMP ping sweeps, TCP SYN scans).
* Escaneo de vulnerabilidades (Nessus, OpenVAS).

### Herramientas útiles

* Detección: Suricata, Zeek, Snort, Firewall logs, EDR.
* Análisis: Wireshark, NetFlow, Splunk, ELK.
* Mitigación: iptables, firewalld, Cisco ACLs, reglas Snort personalizadas.

### Indicadores de Compromiso (IoCs)

* IPs con múltiples intentos de conexión fallida.
* Tráfico con firmas de escaneo conocidas.
* Accesos a servicios no documentados o fuera del horario habitual.
* Picos inusuales de tráfico hacia múltiples destinos/puertos.

## Información adicional

* MITRE ATT\&CK Framework – [T1595.002: Active Scanning – Vulnerability Scanning](https://attack.mitre.org/techniques/T1595/002/)
* Nmap Book – Gordon “Fyodor” Lyon: [Nmap Network Scanning](https://nmap.org/book/)
* OWASP: [Testing for Network Vulnerabilities](https://owasp.org/www-project-web-security-testing-guide/)
