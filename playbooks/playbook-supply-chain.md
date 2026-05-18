## Playbook: Compromiso de la cadena de suministro

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

Este playbook define la respuesta específica ante incidentes que afecten a proveedores, servicios externos, componentes software o integraciones de terceros de los que depende la empresa. Su finalidad es reducir el impacto sobre la operativa, cortar relaciones de confianza inseguras y coordinar la respuesta con los terceros implicados.

Se activará ante cualquiera de estas señales:

1. Notificación oficial de incidente por parte de un proveedor crítico;
2. Comportamiento anómalo tras una actualización, integración o cambio de tercero;
3. Detección interna de software, servicio o componente comprometido de origen externo;
4. Sospecha de abuso de credenciales compartidas, API o accesos remotos de proveedor.

### Roles mínimos implicados

Como mínimo, en este playbook deben intervenir estas funciones:

* `Incident Commander`, para coordinar la respuesta y aprobar el escalado operativo y de comunicación;
* Adjunto del `Incident Commander` o escriba, para seguimiento de tiempos, tareas y cronología;
* Equipo TIC, para revisar integraciones, accesos, configuraciones y dependencias;
* Help desk, para centralizar avisos y registrar afectación operativa;
* Responsables de negocio afectados, para priorizar servicios dependientes del tercero;
* Proveedor implicado y, si procede, asesoría jurídica o apoyo RGPD.

### Documentación y evidencias

1. Crear o actualizar el expediente del incidente con el nombre definido en el plan general.
2. Registrar desde el inicio:
   * Resumen inicial del incidente;
   * Tercero, producto o integración afectados;
   * Impacto funcional, contractual y de datos;
   * Línea temporal de eventos y comunicaciones;
   * Responsables asignados;
   * Decisiones de contención, erradicación y restauración.
3. Conservar comunicaciones del proveedor, logs, versiones, IOC, contratos, SLA y extractos técnicos con fecha, hora, origen y responsable de la recogida.
4. Aplicar cadena de custodia cuando las evidencias puedan ser relevantes para acciones legales, contractuales o periciales.

### Investigar

1. Confirmar la existencia del incidente y **qué proveedor, servicio o componente** está comprometido.
    * Puede afectar a software, actualizaciones, integraciones cloud, proveedor de hosting web o tienda online, servicio antimalware, librerías de terceros o hardware.
    * En esta empresa deben priorizarse especialmente estos terceros: proveedor de hosting de la web y la tienda online, subcontrata del antivirus, servicios cloud de almacenamiento y consultoría externa vinculada al cumplimiento.
2. Determinar **cómo se ha detectado**.
    * Notificación oficial del proveedor.
    * Alerta interna del equipo TIC.
    * Comportamiento anómalo tras una actualización, integración o cambio de proveedor.
    * Aviso de clientes, usuarios o inteligencia externa.
3. Delimitar **el alcance del compromiso**.
    * Qué sistemas internos dependen del proveedor comprometido.
    * Qué datos se intercambian con el tercero.
    * Si el incidente afecta a la página web, tienda online, correo, almacenamiento cloud o antivirus gestionado externamente.
    * Si existen credenciales compartidas, API, certificados o accesos remotos activos.
4. Evaluar **impacto técnico y de negocio**.
    * Interrupción operativa por desactivar el servicio de terceros.
    * Riesgo para datos personales de clientes y proveedores.
    * Manipulación de actualizaciones, código, configuraciones o ficheros sincronizados.
    * Riesgo reputacional por afectar a la web o a la tienda online.
    * Criterio orientativo de severidad:
        * **media**, si el incidente queda acotado al tercero y sin impacto confirmado en la empresa;
        * **alta**, si afecta a servicios de negocio, cuentas compartidas o datos internos;
        * **crítica**, si afecta a la web, a la tienda online, a datos personales o a varios proveedores estratégicos a la vez.
5. Recopilar y preservar evidencia.
    * Comunicaciones del proveedor, logs de integración, cambios de versión, indicadores de compromiso, contratos, SLA y registros de acceso.
    * Línea temporal desde la actualización o dependencia sospechosa hasta la detección.
    * Registrar en el expediente el origen de cada evidencia y la persona responsable de su recogida.
6. Formular preguntas clave.
    * Si el proveedor ha reconocido el incidente y ha dado medidas concretas;
    * Si existen otros clientes afectados o vulnerabilidades publicadas;
    * Si se ha producido ejecución de código, fuga de datos, sabotaje o simple indisponibilidad;
    * Si hay componentes internos que puedan haber heredado el compromiso.

### Remediar

* **Planificar eventos de remediación** en los que estos pasos se pongan en marcha juntos, o de forma coordinada, con los equipos adecuados listos para responder a cualquier interrupción.
* **Considerar el momento y las compensaciones** de las acciones de remediación: la respuesta tiene consecuencias.

#### Contención

* Desconectar temporalmente integraciones, API, actualizaciones automáticas o accesos remotos asociados al proveedor comprometido cuando el riesgo lo justifique.
* Revocar o rotar credenciales, claves API, certificados y secretos compartidos con el tercero.
* Aislar sistemas internos que hayan recibido software, ficheros o configuraciones sospechosas del proveedor.
* Bloquear comunicaciones hacia dominios, endpoints o repositorios comprometidos.
* Incrementar el nivel de logging y monitorización en todos los sistemas relacionados con el tercero.
* Coordinar de inmediato con el proveedor externo para exigir información técnica, plan de remediación y ventanas seguras de servicio.
* Si la web o la tienda online están afectadas, valorar su paso a modo mantenimiento o limitación funcional temporal.

#### Erradicar

* Eliminar o desinstalar versiones comprometidas de software, plugins, dependencias o agentes desplegados por el proveedor.
* Aplicar versiones corregidas, parches o configuraciones alternativas validadas antes de reconectar.
* Revisar si se introdujeron puertas traseras, cuentas de servicio no autorizadas, tareas programadas, cambios en código o reglas de sincronización.
* Reforzar controles sobre terceros:
    * Privilegio mínimo;
    * Segmentación de acceso;
    * Rotación de secretos;
    * Aprobación formal de cambios.
* Exigir al proveedor evidencia de erradicación y plan de prevención antes de restaurar la confianza operativa.

#### Referencia: Recursos de remediación

* Personal: equipo TIC, responsable de seguridad, responsables de negocio afectados, proveedor externo implicado, área legal y consultoría RGPD.
* Técnicos: inventario de proveedores, consolas cloud, logs de integración, sistema de tickets, contratos o SLA y accesos a firewall o proxies.
* Logísticos: canales de escalado con proveedores, procedimiento de mantenimiento de la web o tienda y alternativas temporales de operación.
* Financieros: soporte externo, costes de sustitución temporal del proveedor, revisiones de seguridad y posibles penalizaciones o gestiones contractuales.

### Comunicar

Además de los pasos y orientaciones generales del plan de respuesta a incidentes:

1. Escalar el incidente a Dirección y al responsable de seguridad, resaltando dependencia de negocio y alcance.
    1. Si el tercero afectado es el proveedor web, la subcontrata del antivirus o un servicio cloud crítico, el escalado será inmediato aunque el impacto técnico inicial parezca limitado.
2. Contactar formalmente con el proveedor afectado y documentar todas las comunicaciones.
3. Informar a departamentos internos afectados de restricciones, caídas de servicio o cambios operativos.
4. Coordinar con asesoría legal y consultoría RGPD si el incidente implica datos personales o incumplimientos contractuales.
5. Preparar comunicación externa para clientes o proveedores si la prestación del servicio se ha visto afectada, siempre con autorización del `Incident Commander` y coordinación con Legal y Comunicación.
6. Valorar notificación a organismos competentes si existe fuga de datos o afectación relevante a terceros.
7. Registrar compromisos, tiempos de respuesta y medidas propuestas por el proveedor para futuras decisiones de riesgo.

### Recuperación

Además de los pasos y orientaciones generales del plan de respuesta a incidentes:

1. Orden recomendado de recuperación:
    1. Servicios internos críticos que dependan del tercero y tengan alternativa segura;
    2. Integraciones con datos sensibles o acceso privilegiado;
    3. Web, tienda online o canales visibles para clientes, si se han visto afectados;
    4. Resto de integraciones y servicios secundarios.
2. Restaurar los servicios afectados solo cuando exista evidencia suficiente de que la integración, el software o el proveedor vuelven a ser seguros.
3. Validar funcionalidad, integridad y seguridad antes de reabrir completamente la operativa.
4. Rotar nuevamente credenciales y revisar permisos residuales tras la reconexión.
5. Mantener monitorización reforzada durante semanas sobre los sistemas vinculados al proveedor.
6. Revisar y mejorar la gestión de terceros:
    * Inventario actualizado;
    * Clasificación por criticidad;
    * Cláusulas de notificación de incidentes;
    * Revisiones de seguridad periódicas;
    * Dependencia mínima necesaria.

### Cierre y AAR

1. El `Incident Commander` declarará el cierre operativo del incidente cuando el riesgo heredado del tercero esté controlado y las integraciones se hayan validado.
2. Completar el expediente con cronología final, impacto, evidencias, comunicaciones del proveedor y resultado de la recuperación.
3. Programar la revisión posterior a la acción (AAR) dentro del plazo definido en el plan general.
4. Registrar acciones de mejora sobre gestión de terceros, cláusulas contractuales, segregación de accesos y validación de cambios.

### Guía operativa rápida

Durante la primera hora, la secuencia recomendada será la siguiente:

| Paso | Acción operativa |
|---|---|
| 1 | Confirmar el incidente y el tercero afectado. |
| 2 | Clasificar la severidad según el impacto de negocio y datos. |
| 3 | Cortar accesos, integraciones o actualizaciones asociadas si existe riesgo activo. |
| 4 | Preservar comunicaciones y evidencias técnicas. |
| 5 | Escalar a Seguridad, Dirección y responsables de negocio afectados. |
| 6 | Exigir al proveedor información técnica, alcance y medidas inmediatas. |
| 7 | Definir qué servicios deben mantenerse, limitarse o detenerse temporalmente. |

### Recursos

#### Referencia: Acciones del usuario ante sospecha de incidente en la cadena de suministro

1. Mantener la calma y reportar cualquier anomalía observada tras una actualización, cambio de proveedor o incidencia en un servicio externo.
2. No reinstalar software, no repetir actualizaciones y no reconectar integraciones sin indicación de TIC.
3. Anotar qué aplicación o servicio se vio afectado, a qué hora y qué cambio previo se realizó.
4. Seguir únicamente las comunicaciones internas oficiales.

#### Referencia: Acciones del Help Desk ante posible incidente en la cadena de suministro

1. Abrir un ticket prioritario y registrar el proveedor o servicio afectado.
2. Recoger:
    1. Aplicación o sistema impactado;
    2. Fecha del cambio o actualización relacionada;
    3. Síntomas observados;
    4. Usuarios o departamentos afectados.
3. Escalar a TIC y al responsable de seguridad si hay relación con proveedores críticos.
4. Documentar toda comunicación recibida del proveedor.
5. No autorizar reconexiones ni restablecimientos sin validación técnica.

#### Información adicional

1. [MITRE ATT&CK - Supply Chain Compromise (T1195)](https://attack.mitre.org/techniques/T1195/)
2. [CISA - Defending Against Software Supply Chain Attacks](https://www.cisa.gov/resources-tools/resources/software-supply-chain-attacks)
3. [NCSC UK - Supply Chain Security Collection](https://www.ncsc.gov.uk/collection/supply-chain-security)
4. [NIST SP 800-61 Rev. 2 - Computer Security Incident Handling Guide](https://csrc.nist.gov/pubs/sp/800/61/r2/final)

