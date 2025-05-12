# Playbook: Compromiso en la Cadena de Suministro (Supply Chain Compromise)

**Investiga, remedia (contén, erradica), recupera y comunica en paralelo.**

Asigna pasos a individuos o equipos para avanzar en paralelo siempre que sea posible; este playbook no es puramente secuencial. Usa tu mejor criterio.

---

## Investigar

1. **Detecta y confirma el incidente de cadena de suministro**
   - Revisa alertas del SIEM, EDR, CASB, DLP, sistemas de monitorización y reportes de usuarios sobre anomalías relacionadas con proveedores, integraciones, actualizaciones de software o servicios de terceros.
   - Analiza si hay cambios inesperados en el comportamiento de aplicaciones, accesos inusuales, modificaciones en configuraciones, o aparición de archivos/firmas no reconocidas tras una actualización o integración de proveedor.

2. **Determina el vector y alcance del compromiso**
   - ¿El incidente proviene de una actualización de software, servicio cloud, componente hardware, API o integración de proveedor?
   - ¿Qué sistemas, datos, procesos o usuarios internos están afectados directa o indirectamente?
   - ¿El proveedor ha notificado oficialmente el incidente o se ha detectado de forma interna?
   - ¿Se ha producido una fuga de datos, sabotaje, manipulación de información, instalación de malware o acceso no autorizado?

3. **Recopila y preserva evidencias digitales**
   - Extrae logs de integración, registros de cambios, tráfico de red, logs de acceso a APIs, correos de notificación de proveedores, contratos y acuerdos de nivel de servicio (SLAs).
   - Documenta la hora de inicio, sistemas afectados, acciones tomadas y comunicaciones con el proveedor.
   - Si el incidente implica software o hardware comprometido, guarda muestras y versiones para análisis forense.

4. **Plantea preguntas clave y estrategias de investigación:**
   - ¿Qué proveedor, servicio o componente ha sido comprometido?
   - ¿Cuál es el impacto potencial en la organización y sus clientes?
   - ¿El proveedor ha informado de la extensión y naturaleza del compromiso?
   - ¿Hay otros clientes del proveedor afectados?
   - ¿Existen mecanismos de propagación interna o lateral?
   - ¿Se han detectado intentos de explotación activa o abuso tras el compromiso?
   - ¿Qué acciones ha realizado el proveedor para contener y remediar el incidente?

**Herramientas recomendadas:** SIEM, EDR, DLP, herramientas forenses, portales de proveedores, sistemas de ticketing, análisis de logs de integración/API, threat intelligence.

---

## Remediar

* **Planifica las acciones de remediación** para que los pasos se ejecuten en paralelo o coordinados, priorizando la contención y la protección de activos críticos.
* **Evalúa los riesgos y el momento de actuar:** algunas acciones pueden interrumpir servicios o afectar la operativa.

### Contención

1. **Aísla los sistemas y servicios afectados por el proveedor comprometido**
   - Desconecta temporalmente integraciones, APIs, servicios cloud, aplicaciones o dispositivos suministrados por el proveedor afectado.
   - Suspende transferencias de datos entre la organización y el proveedor si hay riesgo de fuga o manipulación.
2. **Bloquea accesos, credenciales y tokens asociados**
   - Revoca o cambia contraseñas, claves API, certificados y accesos compartidos con el proveedor.
   - Deshabilita cuentas de servicio o integraciones afectadas hasta completar la investigación.
3. **Refuerza la monitorización y alerta en sistemas relacionados**
   - Incrementa el nivel de logging y activa alertas de actividad sospechosa en los sistemas conectados con el proveedor.
4. **Informa a los equipos internos y responsables de negocio**
   - Comunica la situación a los responsables de sistemas, legal, compliance y negocio afectados.

**Herramientas y procedimientos:** Consolas de gestión de integraciones, SIEM, gestión de identidades (IAM), firewalls, portales de proveedores, comunicación directa con el proveedor.

---

### Erradicación

1. **Elimina o desactiva componentes, software o integraciones comprometidas**
   - Desinstala versiones afectadas, elimina scripts o configuraciones alteradas, y revierte cambios realizados por el proveedor.
2. **Aplica parches y actualizaciones seguras**
   - Instala versiones corregidas, parches de seguridad o reemplaza componentes comprometidos por versiones verificadas.
3. **Revisa y refuerza la configuración de seguridad**
   - Audita permisos, accesos y configuraciones de los sistemas afectados.
4. **Realiza un análisis exhaustivo para detectar persistencias**
   - Busca puertas traseras, cuentas ocultas, reglas de firewall alteradas o cualquier rastro de actividad maliciosa.
5. **Coordina con el proveedor y solicita evidencia de remediación**
   - Exige al proveedor informes de acciones tomadas, parches aplicados y garantías de seguridad antes de restablecer la integración.

**Herramientas y procedimientos:** Consolas de administración de sistemas, herramientas de análisis forense, portales de soporte de proveedores, documentación de cambios.

---

## Recuperar

1. **Restaura servicios y sistemas afectados desde copias limpias y verificadas**
   - Asegura que los backups no estén comprometidos y valida la integridad de los datos restaurados.
2. **Rehabilita integraciones y accesos solo tras confirmar la seguridad**
   - Realiza pruebas de funcionamiento y seguridad antes de restablecer la conexión con el proveedor.
3. **Solicita cambios de credenciales a todos los usuarios y servicios relacionados**
   - Refuerza autenticación y controles de acceso.
4. **Monitoriza la actividad posterior a la recuperación**
   - Mantén vigilancia reforzada durante días/semanas para detectar actividad anómala.
5. **Actualiza procedimientos y controles en base a las lecciones aprendidas**
   - Refuerza políticas de gestión de proveedores y revisa acuerdos contractuales de seguridad.

---

## Comunicación

1. **Escala el incidente y comunica con dirección, responsables de seguridad, legal y compliance según el plan interno.**
2. **Contacta con el proveedor afectado** para obtener información oficial, actualizaciones y coordinación de la respuesta.
3. **Notifica a usuarios internos y departamentos afectados** sobre la situación, medidas tomadas y restricciones temporales.
4. **Consulta con el área legal sobre obligaciones regulatorias** (por ejemplo, RGPD, contratos con clientes).
5. **Prepara mensajes claros y coordinados para clientes, socios o reguladores si hay impacto externo.**
6. **Considera la notificación a autoridades** si el incidente implica fuga de datos sensibles o riesgo para clientes.
7. **Registra toda la comunicación y asegúrate de que puede auditarse y usarse para aprendizaje futuro.**

---

## Prevención y reducción de riesgos

1. Mantén un inventario actualizado de proveedores, integraciones y componentes críticos.
2. Evalúa periódicamente la postura de seguridad de los proveedores y exige auditorías/certificaciones.
3. Incluye cláusulas de notificación y respuesta a incidentes en todos los contratos con terceros.
4. Realiza simulacros de incidentes de cadena de suministro con los equipos internos y proveedores clave.
5. Limita los privilegios y accesos de proveedores a lo estrictamente necesario.
6. Monitoriza continuamente la actividad de integraciones y servicios de terceros.
7. Exige actualizaciones y parches regulares, así como pruebas de seguridad antes de implementar cambios de proveedores.
8. Refuerza la formación interna sobre riesgos de la cadena de suministro y procedimientos de respuesta.

---

## Recursos

- Personal de ciberseguridad, IT, legal y compliance.
- Acceso a consolas de administración, SIEM, gestión de identidades, portales de proveedores y sistemas de ticketing.
- Soporte de proveedores y consultoría externa si es necesario.
- Documentación de contratos, acuerdos de nivel de servicio y políticas internas.

---

## Referencias MITRE ATT&CK y RE&CT

- **MITRE ATT&CK:** [T1195 - Supply Chain Compromise](https://attack.mitre.org/techniques/T1195/)
- **RE&CT:** Identificación, Contención, Erradicación, Recuperación, Comunicación, Mejora continua.

---

## Acciones recomendadas para usuarios ante un incidente de cadena de suministro

1. Mantén la calma y reporta cualquier anomalía detectada tras una actualización o integración de proveedor.
2. No manipules sistemas afectados sin instrucciones del equipo de seguridad.
3. Anota cualquier mensaje, alerta o comunicación recibida del proveedor.
4. Coopera con el equipo de respuesta y sigue sus indicaciones estrictamente.

## Acciones recomendadas para el helpdesk

1. Abre un ticket/documento de incidente recogiendo todos los detalles aportados.
2. Verifica la identidad del informante y recopila información relevante (sistema, proveedor, tipo de integración).
3. Escala el incidente al área de ciberseguridad y responsable de proveedores.
4. No realices cambios en sistemas afectados sin autorización.
5. Documenta todas las acciones y comunicaciones para auditoría y mejora.

---

## Información adicional

1. [MITRE ATT&CK: Supply Chain Compromise](https://attack.mitre.org/techniques/T1195/)
2. [Guía de respuesta a incidentes de cadena de suministro - NCSC UK](https://www.ncsc.gov.uk/collection/supply-chain-security)
3. [Ejemplos y estrategias defensivas - BlueVoyant](https://www.bluevoyant.com/knowledge-center/supply-chain-attacks-7-examples-and-4-defensive-strategies)