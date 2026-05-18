# Playbook: Ingeniería Social

## Resumen

Este playbook cubre la respuesta a incidentes de ingeniería social. Estos ataques buscan engañar a empleados para obtener información sensible, credenciales, o acceso a sistemas. La ingeniería social puede ocurrir por teléfono, redes sociales, o en persona con excusas falsas para ganar confianza.

Para nuestra empresa IT con empleados en varias ubicaciones y acceso a datos de clientes, este es un riesgo significativo. Muchos empleados son nuevos o no tienen entrenamiento en reconocer intentos de manipulación. Los atacantes saben esto.

---

## Investigar, Remediar y Comunicar en Paralelo

**Importante**: Los siguientes pasos no son puramente secuenciales. Asigna tareas a diferentes personas o equipos para que trabajen simultáneamente.

Mientras el equipo técnico investiga en los sistemas, el equipo de comunicación puede estar preparando mensajes de alerta, y el equipo de contención puede estar protegiendo credenciales o accesos. No esperes a que termine una fase para empezar la siguiente.

---

## Investigar

Cuando se reporta un posible ataque de ingeniería social, el equipo de respuesta reúne información rápidamente.

### Paso 1: Recolectar Información del Incidente

**Quién**: Investigador de seguridad o administrador
**Tiempo**: Primeros 5-10 minutos
**Acciones**:

- Contacta inmediatamente al usuario que reportó el incidente. Pregunta:
  - ¿Cuándo ocurrió? (hora exacta)
  - ¿Quién contactó al empleado? ¿Nombre o información que proporcionó?
  - ¿Cómo fue el contacto? (teléfono, redes sociales, en persona, ...)
  - ¿Qué información buscaban?
  - ¿Qué hizo el empleado? ¿Dio información? ¿Credenciales? ¿Acceso físico?
  - ¿Otros compañeros recibieron contactos similares?

- Si el usuario entregó credenciales, notifica de inmediato al equipo de sistemas.
- Si involucró acceso físico o ubicación, documenta detalles exactos.
- Si es urgente (el usuario dio credenciales), avisa al Incident Commander de inmediato.

### Paso 2: Buscar Otros Incidentes Similares

**Quién**: Investigador de seguridad, en paralelo con Paso 1
**Tiempo**: 10-15 minutos
**Acciones**:

- Revisa reportes recientes: ¿hay otros empleados reportando contactos similares?
- Busca patrones: ¿mismo número de teléfono? ¿Mismo nombre falso? ¿Misma excusa o historia?
- Revisa redes sociales: ¿perfiles falsos que finjan ser empleados de la empresa?
- Busca en logs de acceso: ¿hay intentos de acceso sospechosos recientes?

**Resultado esperado**: Lista de todos los empleados potencialmente contactados por el mismo atacante.

### Paso 3: Evaluar el Riesgo Inicial

**Quién**: Investigador senior
**Tiempo**: 15-20 minutos acumulados
**Acciones**:

Clasifica el incidente según lo que pasó:

- **Bajo riesgo**: El empleado vio el contacto sospechoso, no confió, lo reportó.
  - Acción siguiente: Documentar. Alerta preventiva.
  
- **Riesgo moderado**: El empleado proporcionó información no sensible (ej: extensión, nombre del jefe).
  - Acción siguiente: Investigación técnica. Monitorear acceso.
  
- **Riesgo alto**: El empleado proporcionó información sensible o acceso limitado.
  - Acción siguiente: Investigación técnica inmediata. Cambiar credenciales.
  
- **Riesgo crítico**: El empleado proporcionó credenciales administrativas o permitió acceso físico.
  - Acción siguiente: Cambiar credenciales de inmediato. Investigación forense.

**Comunica el nivel de riesgo al Incident Commander para que decida si esto necesita activación total del equipo o solo respuesta técnica**.

### Paso 4: Investigación Técnica

**Quién**: Técnico de sistemas, en paralelo con pasos anteriores si es riesgo alto/crítico
**Tiempo**: Depende de hallazgos
**Acciones**:

Si se proporcionaron credenciales:
- Busca intentos de inicio de sesión con esa cuenta desde ubicaciones anormales.
- Busca acceso a sistemas o datos que ese usuario normalmente no accede.
- Revisa qué pasó después de que se entregaron las credenciales.

Si hubo acceso físico comprometido:
- Revisa logs de acceso físico (puertas, tarjetas, video).
- ¿Qué sistemas o ubicaciones fueron accedidos?
- ¿Qué se movió, copió, o modificó?

Si involucró información de sistemas:
- Busca si esa información (nombres de servidores, IP, ...) se usa en otros ataques.
- Revisa si alguien accedió a información similar después de la llamada.

---

## Remediar

La remediación ocurre en tres fases: Contención, Erradicación, Recuperación. Coordina equipos para trabajar en paralelo.

### Contención

**Objetivo**: Evitar que la información comprometida se use para daño mayor. Proteger credenciales y accesos.

#### Paso 1: Proteger Credenciales Comprometidas

**Quién**: Administrador de sistemas
**Tiempo**: 5-10 minutos
**Acciones**:

Si se comprometieron credenciales:
- Cambia la contraseña inmediatamente. Una contraseña fuerte, diferente a la anterior.
- Si el usuario tiene privilegios de administrador, cambia esas credenciales también.
- Requiere autenticación de dos factores para esa cuenta (si no la tiene).
- Informa al usuario que su información fue comprometida y que ha sido cambiada.

Si se proporcionó información no-técnica (nombre del jefe, departamentos, ...):
- No cambies credenciales (no hay indicación de compromiso técnico).
- Pero notifica al usuario. Explica qué pasó. Educa sobre ingeniería social.

**Herramientas sugeridas**: Active Directory, panel de cuentas de usuario

#### Paso 2: Investigar Acceso No Autorizado

**Quién**: Investigador técnico
**Tiempo**: 15-30 minutos, en paralelo
**Acciones**:

- Revisa logs de acceso: ¿alguien usó esa cuenta desde ubicación/hora anormal?
- ¿Se accedió a sistemas críticos? ¿Se descargaron datos? ¿Se modificó algo?
- ¿Se crearon reglas de reenvío, cuentas de usuario, o tareas programadas?
- Busca si alguien exploró la red o buscó otros sistemas.

**Documenta**: Qué se accedió, cuándo, desde dónde (IP).

**Herramientas sugeridas**: Logs de servidor, logs de aplicación, Microsoft 365 audit logs, firewall logs

#### Paso 3: Aislar Acceso Comprometido (si es necesario)

**Quién**: Administrador de sistemas
**Tiempo**: 10-15 minutos, en paralelo
**Acciones**:

- Si la cuenta tiene acceso crítico, desactívala temporalmente mientras investigas.
- Si hay acceso físico comprometido (tarjeta de acceso), bloquea la tarjeta.
- Si se compromete una cuenta de servicio, desactívala y reasigna a otra.

---

### Erradicación

**Objetivo**: Eliminar accesos no autorizados, cerrar puertas traseras que el atacante dejó.

#### Paso 1: Cerrar Accesos No Autorizados

**Quién**: Administrador de sistemas
**Tiempo**: 10-20 minutos
**Acciones**:

- Si el atacante creó una cuenta de usuario, elimínala.
- Si creó reglas de reenvío, elimínalas.
- Si se accedió a través de una vulnerabilidad, ciérrala (parcheando).
- Si creó una puerta trasera (tarea programada, script, ...), elimínala.
- Si se activo el acceso remoto no autorizado, desactívalo.

**Busca indicadores en**:
- Cuentas de usuario nuevas o modificadas
- Reglas de reenvío de correo
- Tareas programadas nuevas
- Aplicaciones instaladas nuevas
- Cambios en permisos de archivos
- Credenciales nuevas o compartidas

**Herramientas sugeridas**: Active Directory, Event Viewer, autoruns (Windows), cron jobs (Linux)

#### Paso 2: Cambiar Todas las Credenciales Relacionadas

**Quién**: Administrador
**Tiempo**: 10-30 minutos
**Acciones**:

- Cambiar la contraseña de la cuenta del usuario (si no la cambiaste en contención).
- Si el usuario tiene acceso a cuentas de servicio, cambiar esas también.
- Si el usuario accede a sistemas remotos (VPN, ...), cambiar esas credenciales.
- Notificar al usuario de todos los cambios.

---

### Recuperación

**Objetivo**: Devolver los sistemas a funcionamiento normal. Validar que todo está limpio.

#### Paso 1: Validación Post-Contención

**Quién**: Investigador técnico
**Tiempo**: 20-30 minutos
**Acciones**:

- Revisa que no hay acceso anormal en la cuenta después del cambio de contraseña.
- Verifica que las aplicaciones funcionan correctamente.
- Pide al usuario que acceda a sistemas críticos y valida funcionamiento.
- Monitorea la cuenta durante 3-7 días buscando acceso sospechoso.

#### Paso 2: Comunicar al Usuario

**Quién**: Administrador de sistemas
**Tiempo**: 10-15 minutos
**Acciones**:

- Notifica al usuario que:
  - Su contraseña fue cambiada.
  - Su cuenta está siendo monitoreada.
  - Qué pasó exactamente (en términos simples).
  - Cómo evitarlo en el futuro (verificar identidad, colgar y llamar de vuelta, ...).

- Aprovecha para educar: "Este es un ejemplo de ingeniería social. En el futuro, si reciben una llamada que..."

---

## Comunicar

**Objetivo**: Mantener informados a los stakeholders apropiados. Educar a otros empleados. Transparencia controlada.

### Comunicación Interna

**Paso 1: Al Incident Commander (de inmediato si es alto riesgo)**

- Reporte ejecutivo: "Detalle del incidente, riesgo identificado, acciones tomadas"
- Tiempo estimado de resolución

**Paso 2: Al Equipo de Seguridad**

- Una vez confirmado, todos los miembros del equipo de respuesta deben saber.
- Compartir información específica (número de teléfono falso, nombre usado, tipo de excusa) para detectar intentos similares.

**Paso 3: A los Usuarios Afectados**

- Comunicado educativo: "Recibiste un intento de ingeniería social. Lo reportaste bien. Así se ve este tipo de ataque. En el futuro..."
- Si comprometieron credenciales: "Tomamos estas acciones para protegerte. Tu cuenta está segura."

**Paso 4: Alerta a Toda la Empresa (si es campaña grande)**

- Si múltiples empleados recibieron contactos similares, envía alerta general.
- Asunto: "ALERTA DE SEGURIDAD: Campaña de Ingeniería Social Detectada"
- Incluir: Qué tipo de engaño usa (falsa identidad, urgencia creada, autoridad falsa, ...), qué NO hacer, a quién reportar
- Esto previene que otros caigan en el mismo ataque.

### Comunicación Externa

**Si acceso o datos fueron expuestos**:
- Consultar con departamento legal sobre obligación de notificación.
- Preparar comunicado: qué pasó, qué datos, qué estamos haciendo.
- Notificar según requisitos legales (RGPD u otros).

---

## Monitoreo Post-Incidente

**Quién**: Equipo de seguridad
**Tiempo**: 7 días mínimo

- Monitorea la cuenta del usuario comprometido: busca acceso anormal.
- Busca nuevos intentos de ingeniería social similares.
- Revisa si el mismo atacante apunta a otros usuarios.
- Si se detecta acceso no autorizado DESPUÉS de la remediación, activa nuevamente: es posible que haya dejado una puerta trasera.

---

## Lecciones Aprendidas

Después de resolver el incidente, el equipo se reúne:

**Preguntas a responder**:
- ¿Cómo el atacante obtuvo el número o información? (¿es pública en redes sociales?)
- ¿Por qué ese empleado en particular? ¿Tiene acceso especial?
- ¿Qué hizo creíble el engaño? ¿Fue urgencia? ¿Falsa autoridad? ¿Amenaza?
- ¿El usuario tenía entrenamiento en ingeniería social? ¿Debemos entrenar más?
- ¿Tuvimos respuesta rápida? ¿Qué ralentizó las cosas?
- ¿Hay formas de verificar identidad mejor? (Colgar y llamar de vuelta a número verificado, ...)

**Mejoras identificadas**:
- Entrenar a empleados en tácticas de ingeniería social.
- Implementar protocolos de verificación de identidad.
- Usar autenticación de dos factores para acceso crítico.
- Mejorar monitoring de acceso anormal.
- Crear cultura de reportar intentos sospechosos sin miedo.

---

## Recursos

### Herramientas Recomendadas

- **Análisis de llamadas**: Logs de teléfono PBX, grabación de llamadas (si permitido)
- **Investigación de identidad**: Búsqueda reversa de números, verificación de perfiles
- **Monitoreo de acceso**: Logs de servidor, logs de aplicación, Microsoft 365 audit logs
- **Logs**: Syslog, Windows Event Log, firewall logs - para investigación

### Personal Requerido

- 1-2 Investigadores de seguridad
- 1 Administrador de sistemas
- 1 Incident Commander
- 1 Especialista en comunicación (para alertas)
- 1 Especialista en entrenamiento (para educación)

### Tiempo Típico de Respuesta

- Detección a contención: 5-10 minutos
- Contención a erradicación: 10-30 minutos
- Investigación completa: 1-3 horas
- Monitoreo: 7 días

---

## Referencias

- NIST SP 800-61: Computer Security Incident Handling Guide
- NIST SP 800-50: Building an Information Technology Security Awareness and Training Program
- OWASP: Social Engineering
- MITRE ATT&CK: Reconnaissance Techniques

---

**Documento**: Playbook de Ingeniería Social
**Grupo G5**: Iván Paúl Alba, Sergio González Noria, Manuel Pérez Romero, Javier Calvillo Acebedo
**Fecha**: Mayo 2026