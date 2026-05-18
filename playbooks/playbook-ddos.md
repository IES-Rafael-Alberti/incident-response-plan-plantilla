## Playbook: Ataque DDoS

**Investigar, remediar (contener, erradicar) y comunicar en paralelo.**

Asigna pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es puramente secuencial. Utiliza tu mejor criterio.

### Aplicación del plan general

Este playbook desarrolla el escenario técnico, pero deberá ejecutarse siempre bajo el modelo operativo de [`plan.md`](../plan.md). En particular:

1. El `Incident Commander` dirigirá la respuesta, designará adjunto y escriba cuando corresponda y autorizará las decisiones de escalado relevantes.
2. Se abrirán la llamada, el chat y el expediente del incidente conforme al plan general.
3. La documentación, la cronología, los IOC, las evidencias y la cadena de custodia se mantendrán en el expediente del incidente.
4. Las actualizaciones de estado seguirán la cadencia definida en el plan general, con referencia de dos horas mientras el incidente permanezca activo, salvo ajuste expreso del `Incident Commander`.
5. Ninguna comunicación externa o ampliación de la difusión interna fuera del equipo de respuesta se realizará sin autorización del `Incident Commander`.

### Finalidad y activación

Este playbook define la respuesta específica ante ataques de denegación de servicio distribuida que afecten a la disponibilidad de servicios expuestos a Internet. Su finalidad es mantener operativos los servicios esenciales, coordinar la mitigación con proveedores y recuperar la normalidad con rapidez y control.

Se activará ante cualquiera de estas señales:

1. Caída o degradación anómala de la web, tienda online u otros servicios públicos;
2. Incremento sostenido y no justificado de tráfico o conexiones concurrentes;
3. Alertas del proveedor de hosting, CDN, firewall o herramientas de monitorización sobre saturación o abuso;
4. Amenaza de extorsión acompañada de indisponibilidad o picos de tráfico.

### Roles mínimos implicados

Como mínimo, en este playbook deben intervenir estas funciones:

* `Incident Commander`, para coordinar la respuesta y aprobar el escalado operativo y de comunicación;
* Adjunto del `Incident Commander` o escriba, para seguimiento de tiempos, tareas y cronología;
* Equipo TIC, para análisis de disponibilidad, filtrado y priorización de servicios;
* Proveedor de hosting, ISP o mitigación DDoS, por la necesidad de respuesta externa;
* Help desk, para centralizar incidencias y estado del servicio;
* Responsables de negocio, Comunicación y SME de los servicios afectados, si la web o la tienda online se ven afectadas.

### Documentación y evidencias

1. Crear o actualizar el expediente del incidente con el nombre definido en el plan general.
2. Registrar desde el inicio:
   * Resumen inicial del incidente;
   * Servicios afectados;
   * Impacto funcional;
   * Línea temporal de eventos;
   * Responsables asignados;
   * Decisiones de contención y recuperación.
3. Conservar logs, métricas, capturas, extractos del proveedor y artefactos asociados con fecha, hora, origen y responsable de la recogida.
4. Aplicar cadena de custodia cuando las evidencias puedan ser relevantes para acciones legales, contractuales o periciales.

### Investigar

1. **Confirmar que se trata de un ataque DDoS** y no de una avería técnica o un pico legítimo de tráfico.
    * Revisar alertas de monitorización, firewall, router, WAF, IDS/IPS y servicios del proveedor externo de la web o tienda online.
    * Comprobar si los usuarios reportan lentitud, errores de acceso, caída de la web, indisponibilidad de la tienda o problemas de acceso a servicios expuestos.
    * Verificar si hay aumento anómalo y sostenido de tráfico, conexiones concurrentes inusuales o saturación de ancho de banda.
2. **Determinar el tipo y alcance del ataque.**
    * Identificar si se trata de un ataque volumétrico, de agotamiento de recursos o de capa de aplicación.
    * Identificar qué servicios están siendo afectados: web corporativa, tienda online, VPN, correo, DNS u otros servicios públicos.
    * Revisar si el tráfico malicioso se distribuye entre múltiples IP, países, ASN o redes.
    * Comprobar si el ataque viene acompañado de amenazas de extorsión o distrae de otra intrusión paralela.
3. **Recopilar y preservar evidencias.**
    * Logs de firewall, WAF, balanceadores, router y proveedor de hosting.
    * Métricas de tráfico, capturas de red si están disponibles y cronología de alertas.
    * Hora de inicio, evolución de la intensidad, sistemas afectados y contramedidas aplicadas.
    * Registrar en el expediente el origen de cada evidencia y la persona responsable de su recogida.
4. **Evaluar el impacto.**
    * Afectación a la disponibilidad de la web y la tienda online.
    * Impacto en captación de clientes, atención comercial y reputación.
    * Riesgo de interrupción en campañas, formularios de contacto o procesos de compra.
    * Criterio orientativo de severidad:
        * **media**, si hay degradación limitada y breve;
        * **alta**, si la web o la tienda online quedan inestables o parcialmente inaccesibles;
        * **crítica**, si existe caída prolongada, extorsión o afectación simultánea de varios servicios públicos.
#### Preguntas clave de investigación

* Cuándo empezó el ataque y cuánto dura.
* Si existe un patrón repetitivo por franjas horarias o recursos concretos.
* Si el ataque coincide con eventos de negocio relevantes o comunicaciones extorsivas.
* Si el DDoS está ocultando intentos de explotación, intrusión o fraude.
* Qué servicios concretos deben mantenerse operativos aunque sea con funcionalidad reducida.
* Si el tráfico malicioso se concentra en una URL, host virtual, API, puerto o proveedor concreto.
* Si hay clientes, sedes o países legítimos que puedan verse bloqueados por las medidas de mitigación.
* Si el proveedor dispone ya de telemetría o reglas de mitigación aplicables a incidentes similares previos.
* Si existe riesgo de impacto contractual, campaña comercial fallida o pérdida de ventas por la duración estimada.

### Remediar

* **Planificar eventos de remediación** en los que estos pasos se ejecuten juntos, o de forma coordinada, con los equipos adecuados preparados para responder a cualquier interrupción.
* **Considerar el momento y las compensaciones** de las acciones de remediación: algunas medidas pueden afectar temporalmente a usuarios legítimos.

#### Contención

* Activar o escalar la protección anti-DDoS del proveedor de hosting, CDN o servicio cloud, si está contratada o disponible.
* Aplicar reglas de firewall, WAF, reverse proxy o balanceador, si existen estos controles en el entorno, para filtrar, limitar o bloquear tráfico malicioso.
* Aplicar rate limiting, geoblocking o bloqueo por firmas cuando el patrón del ataque lo permita.
* Priorizar los servicios esenciales y desactivar temporalmente funcionalidades no críticas si es necesario.
* Coordinar con el ISP o proveedor externo para mitigación upstream cuando el volumen del ataque supere la capacidad local.
* Incrementar la monitorización sobre:
    * Disponibilidad web;
    * Consumo de ancho de banda;
    * Errores HTTP;
    * Uso de CPU y memoria en los servicios públicos.
* Comprobar si otros servicios expuestos están recibiendo tráfico anómalo relacionado.

#### Erradicar

* Revisar y retirar progresivamente las reglas temporales una vez mitigado el ataque y validada la estabilidad.
* Comprobar que no se hayan alterado configuraciones de red, WAF, CDN o balanceadores durante la crisis.
* Analizar si hubo intentos paralelos de explotación de la web, la tienda o los accesos remotos mientras se producía el DDoS.
* Endurecer los servicios públicos afectados:
    * Límites de conexión;
    * Caché y CDN;
    * Protección de formularios;
    * Endurecimiento del WAF y del proxy.
* Documentar indicadores útiles para futuras mitigaciones automáticas.

#### Referencia: Recursos de remediación

* Personal: equipo TIC, responsable de seguridad, proveedor de hosting o web, proveedor de Internet y responsables de negocio afectados.
* Técnicos: consola del firewall, panel del proveedor, CDN/WAF, métricas de tráfico, sistema de tickets y herramientas de monitorización.
* Logísticos: canales urgentes con proveedor externo, procedimiento de comunicación interna y mensajes preparados para clientes.
* Financieros: ampliación temporal de capacidad, servicios anti-DDoS, soporte urgente del proveedor y posibles costes por indisponibilidad.

### Comunicar

1. Elevar el incidente a Dirección y al responsable de seguridad, indicando alcance y servicios afectados.
    1. Escalar de inmediato a Comunicación y a negocio si la web corporativa o la tienda online quedan inaccesibles.
2. Comunicar de inmediato con el proveedor de hosting, CDN o mitigación DDoS si la web o la tienda online están implicadas.
3. Documentar cronología, tráfico observado, impacto y medidas de mitigación aplicadas.
4. Informar a usuarios internos y departamentos afectados sobre el estado del servicio y posibles restricciones temporales.
5. Comunicar a clientes, si es necesario, la existencia de incidencias de disponibilidad sin generar alarma innecesaria, siempre con autorización del `Incident Commander` y coordinación con Comunicación.
6. Coordinar con asesoría legal si el ataque deriva en incumplimientos contractuales, extorsión o perjuicio relevante.
7. Valorar notificación a INCIBE-CERT o a fuerzas y cuerpos de seguridad si el incidente es grave o reiterado.

### Recuperación

1. Orden recomendado de recuperación:
    1. Estabilidad del acceso público y de la red de borde;
    2. Web corporativa y formularios esenciales;
    3. Tienda online y procesos de compra;
    4. Retirada progresiva de medidas temporales no críticas.
2. Verificar la restauración completa de la disponibilidad de los servicios afectados.
3. Mantener monitorización reforzada durante al menos varios días para detectar reanudación del ataque.
4. Revisar impacto económico y operativo:
    * Tiempo de caída;
    * Operaciones perdidas;
    * Impacto reputacional;
    * Costes de mitigación.
5. Ajustar capacidad, reglas y procedimientos con base en las lecciones aprendidas.
6. Actualizar el plan de escalado con proveedores y tiempos máximos de respuesta.

### Cierre y AAR

1. El `Incident Commander` declarará el cierre operativo del incidente cuando la disponibilidad se haya estabilizado y las medidas temporales estén controladas.
2. Completar el expediente con cronología final, impacto, decisiones, evidencias e informe de recuperación.
3. Programar la revisión posterior a la acción (AAR) dentro del plazo definido en el plan general.
4. Registrar acciones de mejora sobre monitorización, capacidad, contratos con proveedores y mensajes de crisis.

### Guía operativa rápida

Durante la primera hora, la secuencia recomendada será la siguiente:

| Paso | Acción operativa |
|---|---|
| 1 | Confirmar que la incidencia es de disponibilidad y no un fallo local. |
| 2 | Clasificar la severidad según alcance e indisponibilidad. |
| 3 | Escalar a TIC, Seguridad y proveedor externo. |
| 4 | Activar la mitigación disponible y las reglas temporales de filtrado. |
| 5 | Priorizar servicios esenciales y limitar funciones no críticas. |
| 6 | Documentar cronología, tráfico e impacto. |
| 7 | Preparar comunicación interna y externa básica si el servicio al cliente se ve afectado. |

### Recursos

#### Referencia: Acciones del usuario ante sospecha de ataque DDoS

1. Mantener la calma y reportar los síntomas observados: caída, lentitud o errores de acceso.
2. Anotar qué servicio falla, a qué hora y desde qué ubicación o red se intenta acceder.
3. No difundir información no confirmada sobre el incidente.
4. Seguir únicamente las indicaciones comunicadas por TIC o por los canales internos oficiales.

#### Referencia: Acciones del Help Desk ante un presunto ataque DDoS

1. Abrir un ticket prioritario y confirmar si el problema afecta a varios usuarios o a un servicio público completo.
2. Recoger la siguiente información:
    1. Hora del fallo;
    2. URL o servicio afectado;
    3. Tipo de error observado;
    4. Si el acceso falla desde una sola sede o de forma general.
3. Escalar inmediatamente a TIC, al responsable de seguridad y al proveedor externo si la web o la tienda están implicadas.
4. Registrar todas las comunicaciones y actualizaciones de estado.
5. Informar a los usuarios según el mensaje oficial definido para el incidente.

#### Información adicional

1. [Cloudflare - ¿Qué es un ataque DDoS?](https://www.cloudflare.com/es-es/learning/ddos/what-is-a-ddos-attack/)
2. [MITRE ATT&CK - Network Denial of Service (T1498)](https://attack.mitre.org/techniques/T1498/)
3. [NIST SP 800-61 Rev. 2 - Computer Security Incident Handling Guide](https://csrc.nist.gov/pubs/sp/800/61/r2/final)

