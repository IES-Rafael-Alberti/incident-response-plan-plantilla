# Playbook: Compromiso de la Cadena de Suministro

## Resumen

Este playbook cubre la respuesta a incidentes de compromiso de la cadena de suministro. Estos ataques ocurren cuando un proveedor, software, servicio, o componente de hardware que la empresa usa es comprometido por atacantes. Luego la empresa descarga, instala, o usa el componente comprometido, trayendo el ataque adentro.

Para nuestra empresa IT que usa servicios en la nube, software de terceros, actualizaciones externas, y servidores terceros para hosting, este es un riesgo importante. No controlamos completamente los proveedores.

---

## Investigar, Remediar y Comunicar en Paralelo

**Importante**: Los siguientes pasos no son puramente secuenciales. Asigna tareas a diferentes personas o equipos para que trabajen simultáneamente.

Mientras el equipo técnico investiga qué fue comprometido, el equipo de comunicación puede estar contactando proveedores, y el equipo de contención puede estar aislando sistemas afectados. No esperes a que termine una fase para empezar la siguiente.

---

## Investigar

Cuando se detecta un posible compromiso en la cadena de suministro, el equipo reúne información rápidamente.

### Paso 1: Confirmar la Alerta

**Quién**: Investigador de seguridad o administrador técnico
**Tiempo**: Primeros 10-15 minutos
**Acciones**:

- ¿Recibimos una notificación de un proveedor de que fue comprometido?
- ¿Detectó nuestro antivirus o monitoreo algo sospechoso en software de terceros?
- ¿Un servicio que usamos tiene comportamiento anormal?
- ¿Encontramos actualizaciones de software con versiones maliciosas?
- Valida la información con la fuente. ¿Es un anuncio legítimo del proveedor?
- Si es alerta de antivirus, documenta: cuándo, qué proceso, qué máquina.

**Resultado esperado**: Confirmación de que hay realmente un compromiso en la cadena.

### Paso 2: Identificar Qué Fue Comprometido

**Quién**: Administrador de sistemas e investigador técnico, en paralelo
**Tiempo**: 15-30 minutos
**Acciones**:

- ¿Cuál es el nombre exacto del proveedor/software/servicio comprometido?
- ¿Qué versión comprometida? ¿Qué versiones usamos nosotros?
- ¿En cuántos sistemas está instalado?
- ¿Cuándo fue instalado? ¿Fue una actualización automática?
- ¿Quién tiene acceso a ese software? ¿Qué datos puede ver?
- Busca en bases de datos de vulnerabilidades (NVD, CVE) información sobre este compromiso.

**Herramientas sugeridas**: Inventario de software, logs de instalación, sistemas de actualización

**Resultado esperado**: Lista clara de sistemas afectados, versiones, fechas.

### Paso 3: Evaluar el Riesgo y Daño Potencial

**Quién**: Investigador senior
**Tiempo**: 20-30 minutos acumulados
**Acciones**:

Analiza:
- ¿Qué daño puede hacer el software comprometido? ¿Es malware? ¿Spyware?
- ¿Pudo ejecutarse con privilegios altos? ¿O acceso limitado?
- ¿Pudo acceder a datos sensibles? (clientes, finanzas, configuraciones)
- ¿Pudo crear puertas traseras para acceso futuro?
- ¿Cuánto tiempo estuvo el software comprometido en nuestros sistemas? (desde instalación hasta detección)

Clasifica el riesgo:
- **Bajo**: Software sin acceso a datos, sin ejecución, detectado rápido.
- **Moderado**: Software con acceso limitado, pero sin evidencia de actividad maliciosa.
- **Alto**: Software ejecutado con acceso a datos, pero sin evidencia de robo.
- **Crítico**: Evidencia de acceso no autorizado a datos o sistemas.

**Comunica el nivel de riesgo al Incident Commander de inmediato**.

### Paso 4: Investigación Técnica Profunda

**Quién**: Técnico forense, en paralelo si es moderado/alto/crítico
**Tiempo**: 30-60 minutos
**Acciones**:

- En sistemas afectados, busca procesos sospechosos o conexiones de red.
- Busca archivos creados o modificados por el software comprometido.
- Analiza logs de red: ¿se conectó el software a servidores externos?
- ¿Se crearon tareas programadas o servicios nuevos?
- ¿Modificó configuraciones de seguridad?
- Sube archivos sospechosos a VirusTotal para análisis.

**Documenta**: Qué hizo, cuándo, a dónde se conectó, qué datos accedió.

**Herramientas sugeridas**: Process Explorer, Wireshark, Event Viewer, VirusTotal

---

## Remediar

La remediación ocurre en tres fases: Contención, Erradicación, Recuperación. Coordina equipos para trabajar en paralelo.

### Contención

**Objetivo**: Evitar que el software comprometido siga haciendo daño o propagándose a otros sistemas.

#### Paso 1: Aislar Sistemas Afectados

**Quién**: Administrador de sistemas
**Tiempo**: 10-20 minutos
**Acciones**:

- Si el software comprometido es crítico para operaciones, planifica el aislamiento cuidadosamente (tiene consecuencias).
- Desconecta los sistemas de la red (desenchufa cable de red o deshabilita WiFi).
- Si está en la nube, detén la instancia pero no la borres (necesitamos preservarla para análisis).
- Si está en un servidor compartido, asílalo en una VLAN separada si es posible.
- Notifica a usuarios afectados: "Tu sistema está siendo revisado. Tendrás acceso restringido temporalmente."

**Herramientas sugeridas**: Switch de red, consola de virtualización, hipervisor

**Resultado**: Sistemas comprometidos aislados. No pueden hacer daño a otros.

#### Paso 2: Bloquear Comunicación Saliente Maliciosa

**Quién**: Administrador de firewall/red
**Tiempo**: 5-10 minutos, en paralelo
**Acciones**:

- Si identificaste servidores C2 (command and control) a los que el software se conecta, bloquéalos en el firewall.
- Bloquea rangos de IP o dominios sospechosos.
- Revisa logs de firewall: ¿otros sistemas se conectaron a estos servidores?
- Si sí, estos sistemas también están potencialmente comprometidos.

**Herramientas sugeridas**: Firewall corporativo, WAF (Web Application Firewall)

#### Paso 3: Pausar Actualizaciones Automáticas

**Quién**: Administrador de parches
**Tiempo**: 5 minutos, en paralelo
**Acciones**:

- Pausa temporalmente las actualizaciones automáticas de software de terceros.
- Necesitamos validar que las nuevas actualizaciones no están comprometidas también.
- Una vez investigado, vuelve a activar.

**Herramientas sugeridas**: Windows Update, WSUS, herramientas de actualización centralizadas

---

### Erradicación

**Objetivo**: Eliminar completamente el software comprometido y cualquier puertas traseras que dejó.

#### Paso 1: Desinstalar el Software Comprometido

**Quién**: Administrador de sistemas
**Tiempo**: 10-30 minutos
**Acciones**:

- En cada sistema afectado, desinstala completamente el software comprometido.
- Asegúrate de que se borran todos los archivos, configuraciones, y directorios asociados.
- Si hay archivos de configuración en áreas no obvias, búscalos y elimínalos.
- Reinicia el sistema después de desinstalar.

**Herramientas sugeridas**: Panel de control, CCLEANER, AppRemover

#### Paso 2: Buscar y Eliminar Puertas Traseras

**Quién**: Administrador de sistemas
**Tiempo**: 20-45 minutos
**Acciones**:

- Busca cuentas de usuario nuevas creadas por el software comprometido.
- Busca reglas de firewall nuevas.
- Busca tareas programadas o servicios nuevos.
- Busca cambios en permisos de archivos.
- Busca rutas de ejecución modificadas.
- Busca conexiones persistentes (VPN no autorizadas, ...).

**Documenta todo lo que encuentres y elimínalo**.

**Herramientas sugeridas**: Active Directory, Event Viewer, autoruns (Windows), cron jobs (Linux), netstat

#### Paso 3: Validar Que el Sistema Está Limpio

**Quién**: Investigador técnico
**Tiempo**: 15-30 minutos
**Acciones**:

- Ejecuta escaneo antivirus completo en cada sistema.
- Busca nuevamente procesos sospechosos o conexiones de red.
- Si usas EDR (Endpoint Detection Response), marca el sistema como comprometido anterior, ahora monitoreado.
- Valida logs de sistema: ¿hay actividad sospechosa después de la desinstalación?

**Herramientas sugeridas**: Antivirus, EDR, escaneo de vulnerabilidades

---

### Recuperación

**Objetivo**: Restaurar sistemas a funcionamiento normal. Implementar la solución limpia.

#### Paso 1: Instalar Versión Limpia del Software

**Quién**: Administrador de sistemas
**Tiempo**: 10-20 minutos
**Acciones**:

- Descarga la versión limpia (parcheada) del software desde la fuente oficial del proveedor.
- Valida la firma digital o hash si es disponible (para asegurar que no fue modificado).
- Instala la versión limpia en los sistemas.
- Configura exactamente como estaba antes (pero sin la versión comprometida).

**Herramientas sugeridas**: Sitio oficial del proveedor, verificación de hash SHA-256

#### Paso 2: Reconectar a la Red

**Quién**: Administrador de sistemas
**Tiempo**: 5-10 minutos
**Acciones**:

- Reconecta los sistemas aislados a la red corporativa.
- Valida que funcionan correctamente.
- Valida que tienen conectividad a recursos necesarios.
- Monitora intensamente durante la primera hora.

#### Paso 3: Validación de Funcionalidad

**Quién**: Usuarios afectados y administrador
**Tiempo**: 15-30 minutos
**Acciones**:

- Pide a usuarios que prueben funciones críticas.
- Verifica que aplicaciones dependientes del software funcionan.
- Monitorea la máquina durante 3-7 días buscando comportamiento anormal.

---

## Comunicar

**Objetivo**: Mantener informados a proveedores, clientes, y personal. Transparencia controlada.

### Comunicación Interna

**Paso 1: Al Incident Commander (de inmediato)**

- Reporte: "Software/proveedor comprometido, sistemas afectados, acciones tomadas"
- Tiempo estimado de resolución

**Paso 2: Al Equipo de Seguridad**

- Detalles técnicos del compromiso.
- IOCs (Indicators of Compromise) para detectar en otros sistemas.
- Protecciones a implementar.

**Paso 3: A Departamentos Afectados**

- Si el software afectó correo, finanzas, o clientes, notifica a esos departamentos.
- Información: qué pasó, cuándo será restituido, qué hacer entretanto.

**Paso 4: A Todos los Usuarios (si es proveedor usado ampliamente)**

- Alerta: "Software XXX debe ser actualizado. Descarga desde [URL oficial]."
- Instrucciones claras de qué hacer.

### Comunicación Externa

**Paso 1: Contactar al Proveedor Comprometido**

- Notifica al proveedor sobre el incidente.
- Pregunta: ¿Cuándo fue comprometido? ¿Quién más afectado?
- Solicita: versión parcheada, IOCs, mitigaciones recomendadas.

**Paso 2: Si Datos de Clientes Fueron Expuestos**

- Consultar con departamento legal sobre obligación de notificación.
- Preparar comunicado: qué pasó, qué datos, qué hacemos.
- Notificar clientes según requisitos (RGPD u otros).

**Paso 3: Actualizar Estado en Redes Internas**

- Publica en intranet: "Software XXX fue comprometido. Esto es lo que hicimos. Ahora está seguro."

---

## Monitoreo Post-Incidente

**Quién**: Equipo de seguridad
**Tiempo**: 14 días mínimo

- Monitorea sistemas afectados: busca comportamiento anormal.
- Monitorea la organización: busca sistemas que puedan haber sido comprometidos desde estos.
- Revisa logs de red: ¿hay conexiones a servidores maliciosos?
- Si el proveedor tiene más actualizaciones, valida cada una antes de instalar.

---

## Lecciones Aprendidas

Después de resolver el incidente, el equipo se reúne:

**Preguntas a responder**:
- ¿Cómo fue el software comprometido? ¿Falta seguridad en el proveedor?
- ¿Cuánto tiempo pasó antes de que lo detectáramos?
- ¿Tuvimos visibilidad de lo que hace el software en nuestros sistemas?
- ¿Nuestro monitoreo funcionó? ¿Por qué detectó el compromiso?
- ¿Nuestros proveedores tienen planes de seguridad documentados?

**Mejoras identificadas**:
- Implementar firma de código verification para software de terceros.
- Mejorar monitoreo de comportamiento de software.
- Usar Software Composition Analysis (SCA) para identificar componentes vulnerables.
- Tener inventario actualizado de software de terceros.
- Validar que los proveedores tienen seguridad adecuada antes de usar.

---

## Recursos

### Herramientas Recomendadas

- **Desinstalación**: Panel de control, CCLEANER, AppRemover
- **Análisis**: Wireshark, Process Explorer, VirusTotal
- **Monitoreo**: EDR (Endpoint Detection Response), SIEM
- **Inventario**: CMDB (Configuration Management Database), herramientas de descubrimiento
- **Verificación de integridad**: HashTab, PowerShell (Get-FileHash)

### Personal Requerido

- 1 Administrador de sistemas
- 1-2 Investigadores técnicos
- 1 Administrador de firewall/red
- 1 Incident Commander
- 1 Contacto de relaciones con proveedores (para comunicación)

### Tiempo Típico de Respuesta

- Detección a confirmación: 10-20 minutos
- Contención: 15-30 minutos
- Erradicación: 30-60 minutos
- Recuperación: 20-40 minutos
- Validación: 15-30 minutos
- Investigación completa: 2-8 horas

---

## Referencias

- NIST SP 800-161: Supply Chain Risk Management Practices for Federal Information Systems and Organizations
- MITRE ATT&CK: Supply Chain Compromise (T1195)
- CISA: Software Supply Chain Security
- OWASP: Software Composition Analysis
- SBOM (Software Bill of Materials): SPDX, CycloneDX

---

**Documento**: Playbook de Compromiso de Cadena de Suministro
**Grupo G5**: Iván Paúl Alba, Sergio González Noria, Manuel Pérez Romero, Javier Calvillo Acebedo
**Fecha**: 18 de Mayo de 2026

