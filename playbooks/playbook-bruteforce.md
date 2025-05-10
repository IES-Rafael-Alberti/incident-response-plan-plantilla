# Playbook: Ataques de Fuerza Bruta

**¡Investigar, remediar (contener, erradicar) y comunicarse en paralelo!**
Asigna tareas a diferentes personas o equipos para que trabajen simultáneamente. Este playbook no es estrictamente lineal: usa tu criterio para adaptar los pasos según la situación.

## Investigar

1. **Revisar registros de autenticación para detectar intentos fallidos repetidos**
   Examina los logs de autenticación (de sistemas, servicios o aplicaciones) para identificar patrones de intentos de inicio de sesión fallidos, especialmente aquellos que provienen de una misma IP o que atacan múltiples cuentas.

2. **Analizar alertas generadas por herramientas de seguridad**
   Revisa las notificaciones de sistemas de detección de intrusos (IDS/IPS), firewalls, SIEM o soluciones de endpoint para detectar señales de actividad sospechosa relacionada con fuerza bruta.

3. **Detectar bloqueos de cuentas por intentos excesivos de autenticación**
   Identifica si hay cuentas de usuario que han sido bloqueadas como resultado de múltiples intentos fallidos. Esto puede indicar que están siendo objetivo de un ataque automatizado.

4. **Identificar el origen del ataque**
   Recopila información sobre las direcciones IP, dominios o ubicaciones geográficas desde donde se originan los intentos de acceso. Esto ayuda a confirmar si el ataque es interno, externo o distribuido (por ejemplo, desde una botnet).

5. **Determinar qué cuentas están siendo atacadas**
   Verifica si los intentos de acceso se concentran en cuentas privilegiadas, cuentas de servicios o usuarios específicos. Esto puede dar pistas sobre la intención del atacante.

6. **Evaluar si alguna cuenta ha sido comprometida exitosamente**
   Analiza si alguno de los accesos fue exitoso tras múltiples fallos y si la actividad posterior indica un uso no autorizado.

7. **Recolectar evidencia técnica del incidente**
   Asegura la recopilación y preservación de logs, tráfico de red capturado, alertas y cualquier otro dato relevante para apoyar el análisis forense y futuras acciones legales o administrativas.

## Remediar

### Contención

1. **Bloquear direcciones IP maliciosas de forma inmediata**
   Aplica reglas en el firewall o IDS para impedir nuevas conexiones desde las direcciones IP que han sido identificadas como fuente del ataque.

2. **Suspender temporalmente cuentas bajo ataque**
   Para evitar accesos no autorizados, es recomendable deshabilitar de manera preventiva las cuentas objetivo del ataque hasta que se confirme su integridad.

3. **Aplicar políticas de bloqueo por intentos fallidos**
   Asegúrate de que las políticas de seguridad establezcan límites claros al número de intentos de acceso permitidos antes de bloquear una cuenta o aplicar un retardo progresivo.

4. **Aislar sistemas críticos si es necesario**
   Si los intentos de fuerza bruta afectan sistemas sensibles o comprometen la disponibilidad del servicio, considera aislar temporalmente esos recursos de la red para evitar mayor daño.

### Erradicación

1. **Restablecer credenciales de cuentas afectadas**
   Obliga el cambio de contraseñas a todas las cuentas que fueron blanco del ataque, especialmente si se sospecha que alguna fue comprometida.

2. **Eliminar accesos no autorizados y herramientas instaladas por el atacante**
   Revisa si el atacante logró establecer persistencia mediante puertas traseras, usuarios adicionales o servicios modificados. Elimina toda presencia maliciosa detectada.

## Recuperar

1. **Restaurar cuentas y servicios de manera segura**
   Una vez contenida la amenaza y verificadas las cuentas, procede a reactivarlas y devolver los servicios a su estado normal, asegurando que todo esté bajo control.

2. **Continuar con el monitoreo para prevenir recaídas**
   Mantén una vigilancia activa en busca de nuevos intentos de acceso no autorizado u otras formas de ataque que puedan surgir tras la respuesta inicial.

3. **Informar a los usuarios afectados y promover buenas prácticas**
   Comunica de forma clara a los usuarios impactados sobre lo ocurrido, los pasos tomados, y recomiéndales medidas como el uso de contraseñas robustas y la activación de MFA.

## Prevención de Riesgos

1. **Reforzar políticas de seguridad de autenticación**
   Asegúrate de que la organización tenga políticas sólidas respecto a la longitud, complejidad y expiración de contraseñas, así como mecanismos automáticos de bloqueo ante intentos sospechosos.

2. **Desarrollar campañas de concientización entre empleados**
   Capacita al personal para que reconozca señales de ataque, evite el uso de contraseñas débiles y comprenda la importancia de reportar actividades inusuales.

3. **Implementar autenticación multifactor (MFA)**
   El uso de MFA es una defensa altamente efectiva contra ataques de fuerza bruta, ya que incluso si se obtiene la contraseña, el acceso será denegado sin el segundo factor.

4. **Automatizar la detección y respuesta con herramientas SOAR/SIEM**
   Implementa soluciones que integren correlación de eventos, análisis de comportamiento y respuestas automáticas para reaccionar en tiempo real ante este tipo de amenazas.

## Comunicar

1. **Notificar a los responsables internos según el protocolo**
   Informa al equipo de seguridad, gestión de TI y directivos relevantes sobre el incidente, conforme a los procedimientos establecidos en el plan de respuesta a incidentes.

2. **Documentar todos los pasos y hallazgos del incidente**
   Registra con precisión todas las acciones tomadas, los sistemas afectados, las evidencias recolectadas y las decisiones adoptadas, tanto para auditoría como para lecciones aprendidas.

3. **Consultar con asesoría legal si es necesario**
   En incidentes que puedan tener impacto regulatorio, de privacidad o reputacional, consulta con el departamento legal para determinar si es obligatorio notificar a autoridades o clientes.

---

## Información adicional

* **Cortex XSOAR - Brute Force Investigation (Playbook)**
  [https://xsoar.pan.dev/docs/reference/playbooks/brute-force-investigation---generic](https://xsoar.pan.dev/docs/reference/playbooks/brute-force-investigation---generic)

* **SIRP - Automated Response to Brute Force Attempt Alerts**
  [https://sirp.io/blog/automated-response-to-brute-force-attempt-alerts-how-sirp-helps-you-stay-one-step-ahead/](https://sirp.io/blog/automated-response-to-brute-force-attempt-alerts-how-sirp-helps-you-stay-one-step-ahead/)

* **Cyber Triage Playbook - Brute Force Authentication**
  [https://salemcyber.com/playbooks/brute-force-authentication](https://salemcyber.com/playbooks/brute-force-authentication)

* **Rocheston U - Brute Force Attack Defense and Mitigation Playbook**
  [https://u.rocheston.com/brute-force-attack-defense-and-mitigation-playbook/](https://u.rocheston.com/brute-force-attack-defense-and-mitigation-playbook/)

* **GitHub - Brute Force Attack Playbook (Ejemplo de automatización con SOAR)**
  [https://github.com/kemiscut/Brute-Force-Attack-Playbook](https://github.com/kemiscut/Brute-Force-Attack-Playbook)

* **UNAD - Estructuración de ataques informáticos por medio de playbooks**
  [https://hemeroteca.unad.edu.co/index.php/publicaciones-e-investigacion/article/download/7498/6482/31596](https://hemeroteca.unad.edu.co/index.php/publicaciones-e-investigacion/article/download/7498/6482/31596)

* **CISA - Cybersecurity Incident & Vulnerability Response Playbooks (USA)**
  [https://www.cisa.gov/sites/default/files/2024-08/Federal\_Government\_Cybersecurity\_Incident\_and\_Vulnerability\_Response\_Playbooks\_508C.pdf](https://www.cisa.gov/sites/default/files/2024-08/Federal_Government_Cybersecurity_Incident_and_Vulnerability_Response_Playbooks_508C.pdf)

* **EcuCERT - Incidente Brute Force**
  [https://www.ecucert.gob.ec/wp-content/uploads/2021/07/BRUTE-FORCE.pdf](https://www.ecucert.gob.ec/wp-content/uploads/2021/07/BRUTE-FORCE.pdf)
