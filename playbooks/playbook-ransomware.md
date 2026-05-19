# Playbook: Ransomware

## Resumen

Este playbook cubre la respuesta a incidentes de Ransomware, identificados como el riesgo "Muy Alto" definitivo en nuestro Análisis de Riesgos y catalogado bajo la técnica de MITRE ATT&CK T1486 (Data Encrypted for Impact). El objetivo principal de estos ataques contra nuestra **Asesoría de PYMES y Autónomos** es cifrar los Servidores de Archivos (donde residen BBDD de facturación, contratos y nóminas) y extorsionar a la empresa paralizando la atención al cliente.

Dado que la empresa no puede operar sin el ERP/CRM, una parálisis supondría daños reputacionales y económicos irreversibles, además de ser una violación de seguridad de datos ante la AEPD si exfiltraron información antes de cifrarla (Doble Extorsión). Nuestra estrategia se basa en resiliencia mediante copias externas y la estricta **negativa a pagar rescates**.

---

## Investigar, Remediar y Comunicar en Paralelo

**Importante**: Los siguientes pasos no son puramente secuenciales. Asigna tareas a diferentes personas o equipos para que trabajen simultáneamente.

La velocidad es crítica. Mientras el equipo de sistemas desenchufa redes (Contención), el Incident Commander (CISO) activa planes de contingencia (papel y boli, o correos de emergencia alternativos) para no paralizar urgencias de los clientes.

---

## Investigar

### Paso 1: Identificación y Alcance Inmediato

**Quién**: Nivel 1 TIC (Soporte) o Alerta del EDR
**Tiempo**: 0-5 minutos
**Acciones**:

- Si un usuario reporta "archivos en el servidor no abren" o "tienen extensiones extrañas (.locked, .cry)", aíslalo INMEDIATAMENTE.
- Identifica el **Epicentro**: ¿Qué servidor o terminal comenzó a cifrar? ¿Es el servidor principal donde corre el programa contable (A3, Sage, etc.)?
- Busca notas de rescate: Archivos de texto en el escritorio (`READ_ME.txt`, `DECRYPT.html`) o fondos de pantalla cambiados.
- NO APAGUES EL SERVIDOR. Desconéctalo del switch/Wi-Fi (para que luego el equipo forense pueda extraer las llaves de cifrado en la memoria RAM que se borrarían al reiniciar).

### Paso 2: Análisis y Caza de Lateralidad

**Quién**: SOC / Administrador de Sistemas
**Tiempo**: 15-30 minutos
**Acciones**:

- Identifica hasta dónde llegó el cifrado (Scope): ¿Afectó a los servidores SQL? ¿Almacenamiento en red (NAS)? ¿Y a los backups locales?
- Sube una muestra del archivo de la nota de rescate (o archivo cifrado) a plataformas como [No More Ransom (Crypto Sheriff)](https://www.nomoreransom.org/crypto-sheriff.php) o [ID Ransomware](https://id-ransomware.malwarehunterteam.com/) para descubrir la familia del malware.
- Verifica registros de Firewall buscando los servidores de Comando y Control (C2) usando IoCs conocidos, para descubrir si se produjo exfiltración de datos previa al ransomware (Doble extorsión).

### Paso 3: Evaluar el Impacto Legal y Negocio

**Quién**: CISO y Dirección
**Tiempo**: 20-40 minutos
**Acciones**:

- Define las implicaciones: ¿Está caída la presentación trimestral de impuestos de los clientes de la Asesoría por no tener el servidor? 
- Si se estima robo de base de datos antes del cifrado, activa al equipo Legal para preparar notificación RGPD (AEPD < 72h).

---

## Remediar

### Contención

**Objetivo**: Detener el proceso de cifrado en seco y evitar que pase de una VLAN a otra (ej. que no salte de los PCs de los contables a los Servidores principales).

#### Paso 1: Aislamiento Físico y de Red (Network Isolation)

**Quién**: Administrador de Red / TIC
**Tiempo**: Inmediato
**Acciones**:

- Desconecta los cables de red física de los equipos infectados. Deshabilita la Wi-Fi.
- En los switches gestionados, corta las conexiones entre la red de Empleados y los Servidores Críticos (Segmentación/VLAN Isolation).
- Desconecta los repositorios de Backups de Inmutabilidad de la nube para asegurar que el ransomware no se sincronice sobrecopiando la información sana.

#### Paso 2: Contención Perimetral y de Credenciales

**Quién**: Administrador de Sistemas
**Tiempo**: 10-15 minutos
**Acciones**:

- Bloquea todo el tráfico saliente desde el servidor afectado hacia el exterior para impedir la comunicación criptográfica con los C2 del atacante.
- Inhabilita las cuentas de Administrador de Dominio (Admin / Root) temporalmente, ya que el Ransomware T1486 suele emplearlas para lanzar el cifrado masivo vía GPO.

### Erradicación

**Objetivo**: Eliminar la amenaza y el mecanismo por donde entraron.

#### Paso 1: Búsqueda del Payload y Puertas Traseras

**Quién**: Analista de Seguridad / Perito Forense
**Tiempo**: 1-4 horas
**Acciones**:

- Extrae y analiza qué puerta usó el atacante: ¿Entró por un RDP expuesto (Escritorio Remoto de la oficina) o por el correo de phishing previamente identificado?
- Cierra ese agujero (bloqueo RDP en Firewall, deshabilitar servicio VPN vulnerable, etc).
- Usa el EDR para barrer el resto de la red certificando que el malware ("dropper") no está pausado en el equipo de otro empleado de la asesoría esperando para actuar.

#### Paso 2: Limpieza Quirúrgica o Reconstrucción

**Quién**: Sistemas (TIC)
**Tiempo**: 2-6 horas
**Acciones**:

- NO se recomienda descifrar con claves de atacantes (no pagar).
- Si la máquina es fundamental (el servidor de bases de datos), la política oficial es Formatear ("Wipe") e instalar una imagen "Golden" del sistema limpia validada, para asegurar que no quede persistencia.

---

### Recuperación

**Objetivo**: Reestablecer la facturación y la operativa de la empresa basándose en resiliencia en lugar de negociar.

#### Paso 1: Restauración de Backups (Preparación Inmutable)

**Quién**: IT Support
**Tiempo**: 2-8 horas (según volumen de terabytes)
**Acciones**:

- Montar Servidor Nuevo o paralelo (Sandbox).
- Obtener el Backup comprobado con fecha ANTERIOR al inicio del incidente. 
- Realizar pruebas de integridad de la BBDD de clientes antes de abrirlo al resto de ordenadores de la oficina.

#### Paso 2: Volver a Operatividad Segmentada

**Quién**: TIC y Jefes de Departamento
**Tiempo**: Según afectación
**Acciones**:

- Conectar progresivamente pequeños grupos a la red (Primero Facturación, luego RRHH...).
- Comprobar que no se inician procesos de cifrado al volver a integrar la red.

#### Paso 3: Comunicación RGPD y Lecciones

**Quién**: Legal / CISO
**Tiempo**: < 72 Horas
**Acciones**:

- Ejecutar comunicación exigida a la **Agencia Española de Protección de Datos (AEPD)** en caso de que la doble extorsión involucre volcado de datos fiscales de Pymes.
- Contactar proactivamente a las PYMES impactadas garantizándoles que la Asesoría cuenta con copias externalizadas y el servicio va a volver en X horas sin comprometer sus datos (Ciberresiliencia del negocio).
- Reportar hashes y detalles a **INCIBE-CERT** para cooperar en bloqueos nacionales.

---

### Recursos

#### Referencia: Acciones del empleado ante la sospecha de Ransomware

1. **Mantenga la calma.** No intente reiniciar el PC, no apague el ordenador a la fuerza.
2. Si ves pantallas raras con cuentas atrás rojas, o tus excels se vuelven iconos blancos con terminación `.cry`: **QUITA EL CABLE DE RED o APAGA EL WIFI DE INMEDIATO**. 
3. Avisa a gritos o por móvil al departamento TIC: "Cifrado en curso en la oficina".
4. Saca una foto de la pantalla con tu móvil para tener la cuenta de correo de los atacantes o dirección btc y adjúntala al parte TIC. 
5. Cede tu puesto y aléjate de los ordenadores hasta nueva orden.

