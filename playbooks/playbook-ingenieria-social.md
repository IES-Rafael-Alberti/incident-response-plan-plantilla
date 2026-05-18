# Playbook: Ingeniería Social y Phishing

## Resumen

Este playbook cubre la respuesta a incidentes de ingeniería social y phishing. Estos ataques buscan engañar a empleados para obtener información sensible, credenciales, o acceso a sistemas. La ingeniería social puede ocurrir por correo, teléfono, redes sociales, o en persona.

Para nuestra empresa IT con empleados en varias ubicaciones y acceso a datos de clientes, este es uno de los ataques más probables. Muchos empleados son nuevos o no tienen entrenamiento en seguridad. Los atacantes saben esto.

---

## Investigar, Remediar y Comunicar en Paralelo

**Importante**: Los siguientes pasos no son puramente secuenciales. Asigna tareas a diferentes personas o equipos para que trabajen simultáneamente.

Mientras el equipo técnico investiga en los sistemas, el equipo de comunicación puede estar preparando mensajes, y el equipo de contención puede estar bloqueando correos similares. No esperes a que termine una fase para empezar la siguiente.

---

## Investigar

Cuando se reporta un correo sospechoso, el equipo de respuesta reúne información rápidamente.

### Paso 1: Recolectar Información Inicial

**Quién**: Investigador de seguridad o administrador de correo
**Tiempo**: Primeros 5-10 minutos
**Acciones**:

- Contacta inmediatamente al usuario que reportó el correo. Pregunta:
  - ¿Cuándo recibió el correo? (hora exacta)
  - ¿De quién dice que vino? ¿La dirección de correo se ve correcta?
  - ¿Qué decía el asunto?
  - ¿Qué pasó? ¿Descargó un archivo? ¿Hizo clic en un enlace? ¿Introdujo contraseña en algún sitio?
  - ¿Otros compañeros recibieron correos similares?

- No dejes que el usuario borre el correo. Necesitas mantenerlo como prueba.
- Si es urgente (el usuario hizo clic), avisa al Incident Commander de inmediato.

### Paso 2: Buscar Otros Correos Similares

**Quién**: Administrador de correo, en paralelo con Paso 1
**Tiempo**: 10-15 minutos
**Acciones**:

- En el servidor de correo, busca correos del mismo remitente o con asuntos similares.
- Busca palabras clave del asunto en otros correos (a menudo los atacantes envían múltiples variantes).
- Identifica a cuántas personas llegó este correo.
- Usa reglas de búsqueda como: "asunto contiene: 'Verifica tu cuenta'" o "remitente es: sender@domain.com"

**Resultado esperado**: Lista de todos los usuarios que recibieron el correo malicioso.

### Paso 3: Evaluar el Riesgo Inicial

**Quién**: Investigador senior
**Tiempo**: 15-20 minutos acumulados
**Acciones**:

Clasifica el incidente según lo que pasó:

- **Bajo riesgo**: El usuario vio el correo, le pareció sospechoso, no hizo nada, lo reportó.
  - Acción siguiente: Contención (bloquear). No es urgente.
  
- **Riesgo moderado**: El usuario hizo clic en el enlace pero no introdujo información.
  - Acción siguiente: Investigar si descargó malware. Monitorear cuenta.
  
- **Riesgo alto**: El usuario descargó un archivo del correo.
  - Acción siguiente: Investigar malware inmediatamente. Escanear máquina.
  
- **Riesgo crítico**: El usuario introdujo su contraseña en un sitio falso.
  - Acción siguiente: Cambiar contraseña de inmediato. Investigar acceso no autorizado a su cuenta.

**Comunica el nivel de riesgo al Incident Commander para que decida si esto necesita activación total del equipo o solo respuesta técnica**.

### Paso 4: Investigación Técnica

**Quién**: Técnico de sistemas, en paralelo con pasos anteriores si es riesgo alto/crítico
**Tiempo**: Depende de hallazgos
**Acciones**:

Si el usuario hizo clic en un enlace:
- Identifica la URL. ¿Es un sitio falso tratando de copiar un sitio legítimo? ¿O es un sitio comprometido?
- Busca en indicadores de compromiso (IOCs) bases de datos como VirusTotal o urlhaus.
- Si es un sitio falso, documenta: IP del servidor, registrador de dominio, cuándo fue registrado.

Si el usuario descargó un archivo:
- Obtén el archivo (de la máquina del usuario, cuidadosamente, sin ejecutarlo).
- Sube a VirusTotal para análisis.
- Si es detectado como malware, identifica el tipo.
- Si no es detectado pero es sospechoso (ej: .exe con nombre falso), envía para análisis profundo.

Si el usuario introdujo credenciales:
- Busca intentos de inicio de sesión en esa cuenta desde ubicaciones raras.
- Busca acceso a datos que normalmente ese usuario no accede.
- Revisa qué pasó después del compromiso de credenciales.

---

## Remediar

La remediación ocurre en tres fases: Contención, Erradicación, Recuperación. Coordina equipos para trabajar en paralelo.

### Contención

**Objetivo**: Evitar que se propague el daño. Detener el correo, proteger la cuenta, aislar máquinas infectadas si es necesario.

#### Paso 1: Bloquear el Correo Malicioso

**Quién**: Administrador de correo
**Tiempo**: 5-10 minutos
**Acciones**:

- En el servidor de correo, crea una regla para bloquear correos de ese remitente.
- Bloquea también el dominio si es necesario.
- Retira el correo de las bandejas de otros usuarios que lo recibieron. No dejes que otros lo abran.
- Si es una campaña grande, considera bloquear palabras clave del asunto (temporalmente).

**Herramientas sugeridas**: Panel de administración del servidor de correo

**Resultado**: El remitente es bloqueado. Otros empleados no pueden abrir correos similares.

#### Paso 2: Proteger la Cuenta del Usuario Afectado

**Quién**: Administrador de sistemas
**Tiempo**: 5-15 minutos, al mismo tiempo que el Paso 1
**Acciones**:

Si el usuario introdujo su contraseña:
- Cambia la contraseña inmediatamente. Una contraseña fuerte, diferente a la anterior.
- Si el usuario tiene privilegios de administrador, cambia esas credenciales también.
- Si es posible, requiere autenticación de dos factores para esa cuenta (si no la tiene).
- Informa al usuario que su contraseña fue comprometida y que ha sido cambiada.

Si solo hizo clic pero no introdujo contraseña:
- No cambies contraseña ahora (no hay indicación de compromiso).
- Pero notifica al usuario. Explica qué vio. Educa.

**Herramientas sugeridas**: Active Directory, panel de cuentas de usuario

#### Paso 3: Investigar Acceso No Autorizado (si hubo compromiso de credenciales)

**Quién**: Investigador técnico
**Tiempo**: 15-30 minutos, en paralelo
**Acciones**:

- Revisa logs de acceso. ¿Alguien usó esa cuenta desde una ubicación anormal? ¿A una hora rara?
- Si es correo, revisa si alguien leyó correos, reenvió correos, o creó reglas de reenvío.
- Si es acceso a archivos, ¿qué archivos fueron accedidos? ¿Se descargaron? ¿Se modificaron?
- Si es acceso a aplicaciones (ERP, CRM), ¿qué datos se vieron?

**Documenta**: Qué se accedió, cuándo, desde dónde (IP).

**Herramientas sugeridas**: Logs de servidor, logs de aplicación, Microsoft 365 audit logs

---

### Erradicación

**Objetivo**: Eliminar el malware (si hay), cerrar accesos no autorizados, eliminar puertas traseras que el atacante dejó.

#### Paso 1: Eliminar Malware (si hay)

**Quién**: Técnico de antivirus
**Tiempo**: 15-45 minutos
**Acciones**:

- En la máquina del usuario que descargó el archivo, ejecuta escaneo completo con antivirus actualizado.
- En modo seguro del sistema si es posible (Windows Safe Mode).
- Si el antivirus detecta malware, déjalo que lo elimine o ponlo en cuarentena.
- Reinicia la máquina.
- Ejecuta segundo escaneo para confirmar que no queda nada.
- Si el malware persiste o no se puede eliminar, considera reinstalar el sistema operativo.

**Herramientas sugeridas**: Windows Defender, Malwarebytes, antivirus corporativo

#### Paso 2: Cerrar Accesos No Autorizados

**Quién**: Administrador de sistemas
**Tiempo**: 10-20 minutos
**Acciones**:

- Si el atacante creó una cuenta de usuario, elimínala.
- Si creó reglas de reenvío de correo, elimínalas.
- Si accedió a través de una vulnerabilidad web, ciérrala (parcheando o deshabilitando la función).
- Revisa permisos de archivos. ¿El atacante creó acceso a datos que no debería?
- Si el atacante dejó una puerta trasera (ej: una tarea programada), elimínala.

**Busca indicadores en**:
- Cuentas de usuario nuevas o modificadas
- Reglas de correo nuevas
- Tareas programadas nuevas
- Aplicaciones instaladas nuevas
- Cambios en permisos de archivos

**Herramientas sugeridas**: Active Directory, Event Viewer, autoruns (Windows), cron jobs (Linux)

#### Paso 3: Cambiar Todas las Credenciales Relacionadas

**Quién**: Administrador
**Tiempo**: 10-30 minutos
**Acciones**:

- Cambiar la contraseña de la cuenta del usuario (si no la cambiaste en contención).
- Si el usuario tiene acceso a cuentas de servicio o credenciales compartidas, cambiar esas también.
- Si el usuario accede a sistemas remotos (VPN...), cambiar esas credenciales.
- Notificar al usuario de todos los cambios.

---

### Recuperación

**Objetivo**: Devolver los sistemas a funcionamiento normal. Validar que todo está limpio.

#### Paso 1: Validación Post-Limpieza

**Quién**: Investigador técnico
**Tiempo**: 20-30 minutos
**Acciones**:

- En la máquina del usuario, ejecuta escaneo antivirus nuevamente. Debe estar limpio.
- Verifica que las aplicaciones funcionen correctamente.
- Pide al usuario que pruebe funciones críticas: abrir correo, acceder a archivos, acceder a aplicaciones.
- Monitorea la cuenta durante 3-7 días buscando acceso sospechoso.

#### Paso 2: Comunicar al Usuario

**Quién**: Administrador de sistemas
**Tiempo**: 10-15 minutos
**Acciones**:

- Notifica al usuario que:
  - Su máquina fue limpiada.
  - Su contraseña fue cambiada.
  - Su cuenta está siendo monitoreada.
  - Qué pasó exactamente (en términos simples).
  - Cómo evitarlo en el futuro.

- Aprovecha para educar: "Este es un ejemplo de phishing. En el futuro, si ves un correo que..."

---

## Comunicar

**Objetivo**: Mantener informados a los stakeholders apropiados. Educar a otros empleados. Transparencia controlada.

### Comunicación Interna

**Paso 1: Al Incident Commander (de inmediato si es alto riesgo)**

- Reporte ejecutivo: "Detalle del incidente, riesgo identificado, acciones tomadas"
- Tiempo estimado de resolución

**Paso 2: Al Equipo de Seguridad**

- Una vez confirmado, todos los miembros del equipo de respuesta deben saber.
- Compartir indicadores de compromiso (IOCs) para que detecten variantes.

**Paso 3: A los Usuarios Afectados**

- Correo educativo (aunque no hayan hecho clic): "Recibiste un correo malicioso. Lo bloqueamos. Así se ve este tipo de ataque. En el futuro..."
- Si hicieron clic o descargaron: "Tomamos estas acciones para protegerte. Tu cuenta está segura."

**Paso 4: Alerta a Toda la Empresa (si es campaña grande)**

- Si el mismo correo fue a 50+ personas, envía alerta general.
- Asunto: "ALERTA DE SEGURIDAD: Campaña de Phishing Detectada"
- Incluir: Qué dice el correo, indicadores (remitente, asunto), qué NO hacer, a quién reportar
- Esto previene que otros caigan en el mismo ataque.

### Comunicación Externa

**Si datos de clientes fueron comprometidos**:
- Consultar con departamento legal sobre obligación de notificación (RGPD requiere notificar a clientes en caso de acceso no autorizado a datos personales).
- Preparar comunicado transparente: qué pasó, qué datos, qué estamos haciendo.

---

## Monitoreo Post-Incidente

**Quién**: Equipo de seguridad
**Tiempo**: 7 días mínimo

- Monitorea la cuenta del usuario comprometido: busca acceso anormal.
- Busca nuevas campañas de phishing similares.
- Revisa si el mismo atacante apunta a otros usuarios.
- Si se detecta acceso no autorizado DESPUÉS de la remediación, activa nuevamente: es posible que haya dejado una puerta trasera.

---

## Lecciones Aprendidas

Después de resolver el incidente, el equipo se reúne:

**Preguntas a responder**:
- ¿Cómo el atacante obtuvo la dirección de correo? (¿es pública? ¿fue un list de datos comprometidos?)
- ¿Por qué ese empleado en particular? ¿Es una figura objetivo?
- ¿Qué hace creíble el correo falso? ¿Podemos mejorar el filtrado?
- ¿El usuario tenía entrenamiento en phishing? ¿Debemos entrenar más?
- ¿Nuestro antivirus detectó el malware? ¿Está actualizado?
- ¿Tuvimos respuesta rápida? ¿Qué ralentizó las cosas?

**Mejoras identificadas**:
- Actualizar filtros de correo para bloquear dominos similares.
- Entrenar a empleados en indicadores de phishing.
- Implementar autenticación de dos factores para cuentas de alto riesgo.
- Mejorar monitoring de acceso anormal.

---

## Recursos

### Herramientas Recomendadas

- **Servidor de correo**: Microsoft Exchange, Postfix - para bloquear remitentes y retirar correos
- **Antivirus**: Windows Defender, Malwarebytes, Kaspersky - para escaneos profundos
- **Análisis de URLs/Archivos**: VirusTotal, urlhaus - para investigación técnica
- **Investigación de credenciales**: Have I Been Pwned, credential stuffing tools - para validar compromiso
- **Logs**: Syslog, Windows Event Log, aplicación logs - para investigación

### Personal Requerido

- 1 Administrador de correo
- 1-2 Investigadores técnicos
- 1 Administrador de sistemas
- 1 Incident Commander
- 1 Especialista en comunicación (para alertas)

### Tiempo Típico de Respuesta

- Detección a contención: 5-15 minutos
- Contención a erradicación: 15-45 minutos
- Investigación completa: 1-4 horas
- Monitoreo: 7 días

---

## Referencias

- NIST SP 800-61: Computer Security Incident Handling Guide
- OWASP: Phishing - https://owasp.org/www-community/attacks/Phishing
- Microsoft Security: Email phishing and malware - https://learn.microsoft.com/en-us/microsoft-365/security/
- MITRE ATT&CK: Initial Access (T1193 - Phishing)

---

**Documento**: Playbook de Ingeniería Social
**Grupo G5**: Iván Paúl Alba, Sergio González Noria, Manuel Pérez Romero, Javier Calvillo Acebedo
**Fecha**: 16 de Mayo de 2026