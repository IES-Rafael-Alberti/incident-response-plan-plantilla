# Playbook: Compromiso de Identidad y Acceso

## Resumen

Este playbook cubre la respuesta a incidentes de compromiso de credenciales e identidad. Estos incidentes ocurren cuando un atacante obtiene contraseña, tokens, o acceso a una cuenta de usuario. El atacante puede usar esa identidad para acceder a datos, sistemas, o para propagar el ataque a otros usuarios.

Para nuestra empresa IT con servidores en la nube, aplicaciones críticas (ERP, CRM), y datos de clientes, el compromiso de credenciales es una amenaza inmediata. Si alguien accede con credenciales válidas, es difícil detectar que es un atacante.

---

## Investigar, Remediar y Comunicar en Paralelo

**Importante**: Los siguientes pasos no son puramente secuenciales. Asigna tareas a diferentes personas o equipos para que trabajen simultáneamente.

Mientras el equipo técnico investiga en los logs, el equipo de sistemas puede estar preparándose para cambiar credenciales, y el equipo de comunicación puede estar alertando a usuarios. No esperes a que termine una fase para empezar la siguiente.

---

## Investigar

Cuando se detecta posible compromiso de credenciales, el equipo de respuesta reúne información rápidamente.

### Paso 1: Confirmar el Compromiso

**Quién**: Investigador de seguridad o administrador
**Tiempo**: Primeros 5-10 minutos
**Acciones**:

- ¿Cómo detectamos el compromiso?
  - Un usuario reportó actividad sospechosa en su cuenta.
  - Un servicio de monitoreo detectó acceso anormal.
  - Una base de datos de contraseñas comprometidas muestra la contraseña.
  - El usuario no puede acceder pero alguien más sí está usando su cuenta.

- Valida el reporte. ¿Es realmente el usuario comprometido o es un error?
- ¿Cuándo fue el último acceso legítimo del usuario?
- ¿Hay acceso concurrente (usuario legítimo + atacante accediendo simultáneamente)?

**Resultado esperado**: Confirmación de que la credencial está realmente comprometida.

### Paso 2: Determinar Qué Fue Accedido

**Quién**: Investigador técnico, en paralelo con Paso 1
**Tiempo**: 15-30 minutos
**Acciones**:

- Obtén todos los logs de acceso para esa cuenta desde los últimos 7-30 días.
- Identifica accesos desde ubicaciones o horarios anormales.
- ¿Qué sistemas accedió? (correo, aplicaciones, bases de datos, archivos, ...)
- ¿Se descargaron datos? ¿Se modificó algo? ¿Se creó otra cuenta?
- ¿Se crearon reglas de reenvío de correo?
- ¿Se cambió la contraseña recientemente (por el atacante)?

**Herramientas sugeridas**: Logs de servidor, Microsoft 365 audit logs, logs de aplicación, firewall logs

**Resultado esperado**: Línea de tiempo clara de qué hizo el atacante.

### Paso 3: Evaluar el Riesgo

**Quién**: Investigador senior
**Tiempo**: 15-20 minutos
**Acciones**:

Clasifica según el acceso obtenido:

- **Bajo riesgo**: Acceso a datos no sensibles, tiempo corto, sin modificaciones.
  - Acción siguiente: Cambiar contraseña. Monitorear.
  
- **Moderado riesgo**: Acceso a datos sensibles, pero sin evidencia de descarga.
  - Acción siguiente: Cambiar contraseña. Investigación profunda. Monitoreo intenso.
  
- **Alto riesgo**: Acceso a datos sensibles con descarga, o a sistemas críticos.
  - Acción siguiente: Cambiar credenciales de inmediato. Investigación forense. Revisar si hay puertas traseras.
  
- **Crítico**: Credencial de administrador comprometida. Múltiples sistemas accedidos. Puertas traseras dejadas.
  - Acción siguiente: Cambiar todas las credenciales administrativas de inmediato. Investigación profunda. Posible reimplementación de seguridad.

**Comunica el nivel de riesgo al Incident Commander de inmediato**.

### Paso 4: Investigación Técnica Profunda

**Quién**: Técnico forense, al mismo tiempo si es moderado/alto/crítico
**Tiempo**: 30-90 minutos
**Acciones**:

- Analiza todos los accesos a fondo. ¿Fueron automáticos o manuales?
- ¿Hay herramientas de ataque instaladas? (backdoor, malware, ...)
- ¿Se conectaron a servidores externos sospechosos?
- ¿Se escalaron privilegios? (de usuario regular a administrador)
- ¿Se crearon cuentas nuevas o puertas traseras?
- ¿Se modificaron configuraciones de seguridad?
- ¿Hay indicios de que accedieron con múltiples credenciales o tokens?

**Documenta**: Qué accedieron, cuándo, desde dónde (IP), qué hicieron, a dónde se conectaron.

**Herramientas sugeridas**: Análisis de logs, herramientas forenses, búsqueda de malware

---

## Remediar

La remediación ocurre en tres fases: Contención, Erradicación, Recuperación. Coordina equipos para trabajar en paralelo.

### Contención

**Objetivo**: Evitar que el atacante siga usando la credencial comprometida. Prevenir acceso a más sistemas.

#### Paso 1: Cambiar la Contraseña Inmediatamente

**Quién**: Administrador de sistemas
**Tiempo**: 5 minutos
**Acciones**:

- Cambia la contraseña de la cuenta comprometida.
- Nueva contraseña: fuerte, diferente a cualquier anterior, generada aleatoriamente.
- Si la cuenta tiene privilegios altos, también cambia esas credenciales.
- Comunica al usuario que su contraseña fue cambiada.

**Herramientas sugeridas**: Active Directory, panel de cuentas

#### Paso 2: Desconectar Sesiones Activas

**Quién**: Administrador de sistemas
**Tiempo**: 5-10 minutos
**Acciones**:

- Invalida todas las sesiones activas de esa cuenta.
- En Microsoft 365, revoca todos los tokens.
- En sistemas locales, cierra todas las conexiones remotas.
- El usuario legítimo tendrá que volver a iniciar sesión con la nueva contraseña.

**Herramientas sugeridas**: Panel administrativo, Microsoft 365, sistemas de aplicación

#### Paso 3: Proteger Otras Cuentas del Usuario

**Quién**: Administrador de sistemas
**Tiempo**: 10-15 minutos
**Acciones**:

- Si el usuario tiene múltiples cuentas (usuario normal + administrador), cambia todas.
- Si comparte credenciales con otros (no recomendado pero ocurre), cambiar esas también.
- Requiere autenticación de dos factores para esa cuenta (si no la tiene).
- Revisa si ese usuario accede a otras plataformas (VPN, sistemas remotos, ...): cambia credenciales allí también.

**Herramientas sugeridas**: Active Directory, consolas administrativas

#### Paso 4: Investigar Acceso a Otros Sistemas

**Quién**: Investigador técnico
**Tiempo**: 15-30 minutos
**Acciones**:

- Revisa logs de todos los sistemas donde esa cuenta accedió.
- ¿Hubo cambios? ¿Se descargaron datos? ¿Se crearon cuentas?
- En sistemas críticos, revisa si hay actividad sospechosa DESPUÉS del cambio de contraseña.
- Si en otro sistema también hay actividad sospechosa, ese también está potencialmente comprometido.

**Herramientas sugeridas**: Logs de servidor, logs de aplicación, herramientas de monitoreo

---

### Erradicación

**Objetivo**: Eliminar accesos no autorizados, cerrar puertas traseras, limpiar cualquier malware.

#### Paso 1: Buscar y Eliminar Puertas Traseras

**Quién**: Administrador de sistemas
**Tiempo**: 20-45 minutos
**Acciones**:

- Busca cuentas de usuario nuevas creadas por el atacante.
- Busca reglas de reenvío de correo nuevas.
- Busca tareas programadas o servicios nuevos.
- Busca cambios en permisos de archivos.
- Busca conexiones remotas configuradas (RDP, SSH, ...).
- Busca aplicaciones o scripts ejecutándose.

**Documenta todo lo que encuentres y elimínalo**.

**Herramientas sugeridas**: Active Directory, Event Viewer, autoruns (Windows), cron jobs (Linux), netstat

#### Paso 2: Escanear en Busca de Malware

**Quién**: Técnico de antivirus
**Tiempo**: 15-45 minutos
**Acciones**:

- Si hay evidencia de herramientas de ataque descargadas, ejecuta escaneo antivirus completo.
- En modo seguro del sistema si es posible.
- Si se detecta malware, elimínalo o aísla el sistema.
- Ejecuta segundo escaneo para confirmar limpieza.

**Herramientas sugeridas**: Antivirus, Malwarebytes, herramientas forenses

#### Paso 3: Revisar Cambios Realizados por el Atacante

**Quién**: Administrador
**Tiempo**: 20-30 minutos
**Acciones**:

- Si el atacante cambió la contraseña, ya la cambiaste.
- Si modificó permisos de archivos, revierte esos cambios.
- Si creó reglas de reenvío, elimínalas.
- Si cambió configuraciones de seguridad, restáuralas.
- Si descargó datos, documenta cuáles (necesitas notificar después si son datos personales).

---

### Recuperación

**Objetivo**: Restaurar sistemas a seguridad normal. Validar que todo está limpio.

#### Paso 1: Validación Post-Cambio

**Quién**: Investigador técnico
**Tiempo**: 20-30 minutos
**Acciones**:

- Revisa que la cuenta no tenga acceso anormal DESPUÉS del cambio de contraseña.
- Verifica que no hay procesos sospechosos en sistemas críticos.
- Monitorea la cuenta durante 3-7 días en busca de acceso anormal.
- Si el usuario legítimo accede normalmente, es buena señal.

#### Paso 2: Comunicar al Usuario

**Quién**: Administrador de sistemas
**Tiempo**: 10-15 minutos
**Acciones**:

- Notifica al usuario que su cuenta fue comprometida y que fue corregida.
- Explicar: Su contraseña fue cambiada. Sus sesiones fueron cerradas. Necesita volver a iniciar sesión.
- Pregunta: ¿Cómo fue comprometida la credencial? (¿Phishing? ¿Débil? ¿Compartida?)
- Educar: Cómo mantener la contraseña segura, no compartir, reconocer intentos de phishing.

#### Paso 3: Monitorear Durante Plazo

**Quién**: Equipo de seguridad
**Tiempo**: 7 días continuo
**Acciones**:

- Monitorea la cuenta: ¿hay acceso anormal?
- Monitorea los sistemas que accedió: ¿hay actividad sospechosa?
- Si ves nuevas anomalías, es posible que el atacante dejó una puerta trasera.

---

## Comunicar

**Objetivo**: Mantener informados a stakeholders. Transparencia controlada.

### Comunicación Interna

**Paso 1: Al Incident Commander (de inmediato)**

- Reporte: "Credencial de [usuario/tipo] comprometida. Sistemas accedidos: [lista]. Acciones tomadas: cambio de contraseña, desconexión de sesiones."
- Nivel de riesgo
- Tiempo estimado de monitoreo completo

**Paso 2: Al Equipo de Seguridad**

- Detalles técnicos: Qué accedieron, cuándo, desde dónde.
- IPs del atacante (para bloquear si es necesario).
- Indicios de herramientas o malware.

**Paso 3: A Departamentos Afectados**

- Si accedió a datos de ciertos departamentos (finanzas, clientes, ...), notifica a esos departamentos.
- Información: Qué datos fueron potencialmente accedidos, qué hicimos, qué monitoreo está activo.

**Paso 4: A Todos los Usuarios (si es patrón o campaña)**

- Si detectamos múltiples compromisos similares, alerta a todos.
- Información: Cómo fueron comprometidas, qué hacer, a quién reportar intentos similares.

### Comunicación Externa

**Si datos de clientes fueron expuestos**:
- Consultar con departamento legal sobre obligación de notificación (RGPD).
- Preparar comunicado: qué datos, qué pasó, qué hacemos, cuándo sabrán más.

---

## Monitoreo Post-Incidente

**Quién**: Equipo de seguridad
**Tiempo**: 14-30 días

- Monitorea la cuenta comprometida: ¿hay acceso anormal?
- Monitorea los sistemas que accedió: ¿hay actividad nueva sospechosa?
- Revisa si otros usuarios tienen patrones similares (posible ataque más amplio).
- Si detectas nuevas anomalías, es posible que haya puertas traseras: reinicia investigación.

---

## Lecciones Aprendidas

Después de resolver el incidente, el equipo se reúne:

**Preguntas a responder**:
- ¿Cómo fue comprometida la credencial? (phishing, contraseña débil, compartida, reutilizada, ...)
- ¿Cuánto tiempo pasó antes de detectar el compromiso?
- ¿Qué monitoreo funcionó? ¿Por qué detectó la anomalía?
- ¿El atacante dejó puertas traseras?
- ¿Se accedió a datos sensibles? ¿Se descargaron? ¿Se modificaron?
- ¿Hay otros usuarios con credenciales similares o débiles?

**Mejoras identificadas**:
- Implementar autenticación de dos factores para todos los usuarios.
- Entrenar a empleados en reconocer phishing.
- Revisar políticas de contraseña (longitud, complejidad, cambio periódico).
- Mejorar monitoreo de acceso anormal (horarios, ubicaciones, sistemas).
- No reutilizar contraseñas en múltiples sistemas.
- Usar gestor de contraseñas corporativo para credenciales complejas.

---

## Recursos

### Herramientas Recomendadas

- **Gestión de identidad**: Active Directory, Azure AD, OKTA
- **Auditoría**: Microsoft 365 audit logs, Splunk, ELK Stack
- **Monitoreo**: EDR (Endpoint Detection Response), SIEM, herramientas de detección de anomalías
- **Investigación**: Herramientas forenses, análisis de logs, búsqueda de malware
- **Protección**: Gestor de contraseñas, autenticación multifactor, VPN

### Personal Requerido

- 1-2 Investigadores de seguridad
- 1 Administrador de sistemas
- 1 Administrador de Active Directory/Identidad
- 1 Incident Commander
- 1 Especialista en comunicación

### Tiempo Típico de Respuesta

- Detección a confirmación: 5-15 minutos
- Contención (cambio de contraseña): 5-10 minutos
- Investigación técnica: 30-90 minutos
- Erradicación: 20-45 minutos
- Recuperación: 20-30 minutos
- Monitoreo: 14-30 días

---

## Referencias

- NIST SP 800-61: Computer Security Incident Handling Guide
- NIST SP 800-63B: Authentication and Lifecycle Management
- Microsoft: Incident Response Reference Guide
- MITRE ATT&CK: Credential Access Tactics

---

**Documento**: Playbook de Compromiso de Identidad y Acceso
**Grupo G5**: Iván Paúl Alba, Sergio González Noria, Manuel Pérez Romero, Javier Calvillo Acebedo
**Fecha**: 18 de Mayo de 2026