# Playbook: Phishing

## Resumen

Este playbook cubre la respuesta a incidentes de Phishing, identificados como un vector de entrada inicial crítico (T1566) en nuestra Taxonomía de Incidentes. El objetivo principal de estos ataques contra nuestra **Asesoría de PYMES y Autónomos** es robar credenciales corporativas (robo de cuentas) o engañar a los empleados (recursos humanos, facturación, comercial) para que abran enlaces maliciosos o descarguen malware (como Ransomware).

Dado que la empresa gestiona datos fiscales y financieros de multitud de clientes, el impacto de una intrusión exitosa está categorizado como de Riesgo "Muy Alto". La exposición de estos datos conlleva obligaciones legales severas bajo el RGPD frente a la AEPD en menos de 72 horas.

---

## Investigar, Remediar y Comunicar en Paralelo

**Importante**: Los siguientes pasos no son puramente secuenciales. Asigna tareas a diferentes personas o equipos para que trabajen simultáneamente.

Mientras el equipo técnico investiga en los sistemas, el equipo de comunicación corporativa/legal (DPO) puede estar preparando mensajes de alerta para las PYMES afectadas bajo protocolo RGPD, y el equipo de sistemas puede estar revocando tokens o bloqueando dominios.

---

## Investigar

Cuando se reporta un posible ataque de phishing o el EDR salta por acceso sospechoso.

### Paso 1: Recolectar Información del Incidente

**Quién**: Nivel 1 TIC (Soporte) o Analista de Seguridad
**Tiempo**: Primeros 5-15 minutos
**Acciones**:

- Si un usuario lo reportó, aíslalo y pregúntale:
  - ¿Qué acciones realizó? (¿Solo lo leyó? ¿Hizo clic en un enlace falso del banco/Agencia Tributaria? ¿Descargó un PDF/Excel de supuestas facturas? ¿Introdujo contraseñas de Microsoft 365?)
  - ¿Desde qué dispositivo lo hizo? (PC de la oficina, portátil remoto por VPN o móvil).
- Identifica el **Remitente**, **Asunto** y **Enlaces adjuntos** sin hacer clic en ellos desde tu máquina.
- Revisa en la consola del servidor de correo si ese mismo email ha llegado a otros empleados de la firma.
- Si el usuario introdujo credenciales: avisa al CISO inmediatamente (Escalado Nivel 2).

### Paso 2: Análisis Técnico y de Sandbox

**Quién**: Técnico de Sistemas o SOC
**Tiempo**: 15-30 minutos, en paralelo con Paso 1
**Acciones**:

- Extrae las cabeceras del correo en un entorno aislado para comprobar falsificación de dominio (SPF, DKIM, DMARC).
- Envía los enlaces sospechosos o ficheros anexos a plataformas como VirusTotal o un entorno Sandbox (ej: Cuckoo).
- Busca en los logs del FireWall o proxy corporativo si hay peticiones salientes a los dominios extraídos del cuerpo del correo.

**Resultado esperado**: Lista de Indicadores de Compromiso (IoCs) como dominios, IPs maliciosas y hashes de archivos adjuntos.

### Paso 3: Evaluar el Riesgo Inicial y Compromiso RGPD

**Quién**: CISO, en conjunto con Asesor Legal
**Tiempo**: 20-40 minutos acumulados
**Acciones**:

Clasifica el incidente de Phishing:

- **Bajo riesgo**: El empleado borró o reportó el correo de Phishing sin interactuar.
  - Acción: Bloquear el remitente. Documentar como buena práctica.
- **Riesgo alto**: El empleado hizo clic en un enlace fraudulento o introdujo sus contraseñas corporativas.
  - Acción: Cambiar credenciales de inmediato. Chequeo de conexiones en O365/Workspace.
- **Riesgo crítico**: El empleado descargó y ejecutó un adjunto malicioso (posible preludio de Ransomware) o las credenciales robadas tienen acceso de administrador al Servidor de Archivos / BBDD de clientes.
  - Acción: Aislamiento total del equipo de la red VLAN. Activación del plan de contención de brecha de datos. Preparar notificación a la AEPD.

---

## Remediar

La remediación ocurre en tres fases fundamentales. Coordina equipos según la matriz RE&CT para asfixiar las capacidades del atacante (T1078 Valid Accounts).

### Contención

**Objetivo**: Evitar la lateralidad en la red y denegar al atacante el uso de las credenciales comprometidas.

#### Paso 1: Bloqueo de Cuentas y Revocación de Sesiones

**Quién**: Administrador de Sistemas
**Tiempo**: Inmediato (0-10 minutos desde calificación Alta)
**Acciones**:

- Cambia la contraseña de los usuarios afectados inmediatamente.
- **Revoca las sesiones abiertas** (Tokens Oauth) en todos los servicios cloud corporativos (Email, CRM, ERP).
- Habilita Autenticación Multifactor (MFA) obligatoria en la cuenta si estaba deshabilitada por configuración antigua.

#### Paso 2: Eliminación del Vector de Phishing

**Quién**: Administrador del Servicio de Correo (Ej. Exchange Admin)
**Tiempo**: 10-15 minutos
**Acciones**:

- Usa los IoCs (dominios, IPs, Asunto) para crear reglas en el filtro Anti-Spam de la Asesoría y bloquear temporalmente al remitente matriz.
- Ejecuta un script de purga automatizado ("Hard Delete") en todos los buzones de correo de los empleados para eliminar el correo de phishing, evitando que víctimas adicionales hagan clic.
- Bloquea los dominios en el Firewall perimetral y soluciones proxy web (DNS filtering).

### Erradicación

**Objetivo**: Confirmar que el atacante no ha establecido persistencia silenciosa (puertas traseras).

#### Paso 1: Detectar Persistencias y Reglas de Correo

**Quién**: Analista de Seguridad / Sistemas
**Tiempo**: 20-45 minutos
**Acciones**:

- En el buzón comprometido, revisa si el atacante creó **Reglas de reenvío de correo** (Forwarding rules) hacia direcciones externas genéricas (ej: atacante@gmail.com). Elimínalas inmediatamente.
- Revisa los permisos de delegación u Oauth Apps autorizadas por error durante el ataque (ej: una app que dice ser "Plugin de facturación" pero es malware de robo de tokens). Revócalas.

#### Paso 2: Análisis de Endpoint

**Quién**: Técnico TIC
**Tiempo**:  1-2 horas
**Acciones**:

- Si se descargó un archivo (.zip, excel con macros), ejecuta un escaneo completo (Full Scan) en el portátil corporativo infectado mediante el EDR o las herramientas forenses locales.
- Si se detecta *malware* instalado: aísla físicamente la estación y comienza restauración desde imagen corporativa base.

---

### Recuperación

**Objetivo**: Devolver el servicio a los operarios de la Asesoría, gestionar las consecuencias legales y entrenar a la plantilla para crear resiliencia.

#### Paso 1: Validación y Regreso Operativo

**Quién**: IT Support
**Tiempo**: Según afectación (1-4 horas)
**Acciones**:

- Confirmar que la cuenta del empleado ha dejado de emitir alertas de login sospechoso.
- Entregar al empleado las nuevas credenciales de forma segura.
- Restablecer acceso a la plataforma de gestión de los clientes con el equipo parcheado o verificado.

#### Paso 2: Ejecución del Plan de Comunicación (RGPD / AEPD)

**Quién**: CISO, Dirección General, Asesor Legal / DPO
**Tiempo**: Menos de 72 Horas
**Acciones**:

- Si en el análisis técnico (Logs) se corrobora que el atacante extrajo copias de DNI, modelos de impuestos o datos de nóminas de las PYMES asesoradas usando las credenciales robadas:
  - Rellenar formulario y notificar a la **AEPD**.
  - Contactar por vías seguras (no solo correo electrónico, preferiblemente teléfono) con los clientes impactados ("Asuntos críticos: Información sobre incidente de seguridad y transparencia").
  - Coordinar posible apoyo y reportes con **INCIBE-CERT**.

#### Paso 3: Ciberresiliencia y Mejora Continua

**Quién**: Comité de Seguridad
**Tiempo**: Siguientes 5 días hábiles
**Acciones**:

- Lanzar un mensaje flash informativo ("Lesson Learned") a toda la plantilla (los 150 empleados) mostrando el pantallazo anonimizado del Phishing. Recalcar la importancia de no introducir contraseñas en links relacionados con "Urgencia Bancaria" o "Errores SEPE / AEAT".
- Realizar pruebas simuladas de Phishing a la red en las semanas posteriores para evaluar la cultura de la plantilla.
- Incluir en el PDS las posibles deficiencias del Anti-Spam que permitieron la entrada del correo inicialmente.
