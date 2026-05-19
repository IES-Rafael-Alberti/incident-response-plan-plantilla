# Playbook: Amenaza Interna / Riesgo Físico (Extracción USB)

**Investigar, remediar (contener, erradicar) y comunicar en paralelo.**

Asigne pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es meramente secuencial. Utilice su mejor criterio.

---

## Diagrama de Flujo del Incidente

[![](https://mermaid.ink/img/pako:eNpVUstu2zAQ_JUFz45rSYlh6dDCluMHUKRFHj1U9oGhNjYRiVRJKkhi-GNy7CGnfkCB6se6EuO01kmDndnZHe6OCZ0jS9jG8GoL19OVAvrG2bhA43gCqVb4KJtfCm6uJqA08NppI595zuEDXGKljUPIEZbKmdrqNZycfIRJtlQPaJ3ccNGJZ9qgsgiXzUslc772NpOOnO7-_L6xum0iDOaohOQFWihw07w6WXL7ae_5KfHhqnntZNOMZnMtmwwSmBT6R43cQFqjcrztdmNrbqQGVDCerv9rcaG7DufZWNqCl5IEOoEpWvG-7ax5tVK0bQpYaOve5FMv9OC8A7Ps3BieE7mb5I0487Ugm2iqGrDCyMpZKHkhhdRWW9DgsKT82mWPVWF2iQ9akMzpe8oNnuBOm2fCgpe30kdV8Ac8yIJON8-ucFMbyjd_n_8JPuOGFwdi6IkezT0IyI1yRAN0BLe0BYVgW4s0vf62PqKG2YV28u6wa0uaGBRb3j4_GsWhPQSatUS4bn4KJYU-dPAzLshM1BWao7Tmfq6FRwsPgmxcUVi09fzrl9bqtntif4Jl8-KoOe0neEUUus5DiAvvtMxSicZg94RLOhO6LIdr1qNblzlL6Fyxx0o0JW8h27XqFXNbLHHFEvrNublfsZXak6bi6rvW5UFmdL3ZsuSOF5ZQXeXc4VRyCvAfBVWOJtW1ciwJ4q4FS3bskSVRFPaj0_gsGJ4O4jAcRT32RJxRfxCP4jgKwzg4G0aj0b7HnjvTQT-myukwGsSDUTwcDob7v4n2NJw?type=png)](https://mermaid.ai/live/edit#pako:eNpVUstu2zAQ_JUFz45rSYlh6dDCluMHUKRFHj1U9oGhNjYRiVRJKkhi-GNy7CGnfkCB6se6EuO01kmDndnZHe6OCZ0jS9jG8GoL19OVAvrG2bhA43gCqVb4KJtfCm6uJqA08NppI595zuEDXGKljUPIEZbKmdrqNZycfIRJtlQPaJ3ccNGJZ9qgsgiXzUslc772NpOOnO7-_L6xum0iDOaohOQFWihw07w6WXL7ae_5KfHhqnntZNOMZnMtmwwSmBT6R43cQFqjcrztdmNrbqQGVDCerv9rcaG7DufZWNqCl5IEOoEpWvG-7ax5tVK0bQpYaOve5FMv9OC8A7Ps3BieE7mb5I0487Ugm2iqGrDCyMpZKHkhhdRWW9DgsKT82mWPVWF2iQ9akMzpe8oNnuBOm2fCgpe30kdV8Ac8yIJON8-ucFMbyjd_n_8JPuOGFwdi6IkezT0IyI1yRAN0BLe0BYVgW4s0vf62PqKG2YV28u6wa0uaGBRb3j4_GsWhPQSatUS4bn4KJYU-dPAzLshM1BWao7Tmfq6FRwsPgmxcUVi09fzrl9bqtntif4Jl8-KoOe0neEUUus5DiAvvtMxSicZg94RLOhO6LIdr1qNblzlL6Fyxx0o0JW8h27XqFXNbLHHFEvrNublfsZXak6bi6rvW5UFmdL3ZsuSOF5ZQXeXc4VRyCvAfBVWOJtW1ciwJ4q4FS3bskSVRFPaj0_gsGJ4O4jAcRT32RJxRfxCP4jgKwzg4G0aj0b7HnjvTQT-myukwGsSDUTwcDob7v4n2NJw)

### Visualización de Amenazas y Defensas

![Amenaza Interna: Robo Físico USB](./Amenaza_Interna__Robo_Fsico_USB.svg)

![Defensa Contra Robo Físico USB](./Defensa__Robo_Fsico_USB.svg)

---

## Contexto Típico en Esta Organización

Nuestra empresa cuenta con dos sedes donde es habitual el tránsito de personal externo (clientes y proveedores). Al presentar una situación de controles básica sin políticas de seguridad por escrito ni obligación de escritorio limpio, un atacante físico (o un empleado descontento) puede aprovechar un puesto de trabajo desatendido y desbloqueado en departamentos sensibles (como Facturación o Ventas) para conectar un medio físico de almacenamiento y exfiltrar datos locales.

**Implicaciones típicas en una amenaza interna/física:**

* Exfiltración exprés de bases de datos de pymes clientes y listados de facturación en almacenamiento local (MITRE T1025: Exfiltration Over Physical Medium).
* Uso indebido de identidades legítimas corporativas (MITRE T1078: Valid Accounts).
* Introducción de hardware malicioso de ejecución automática (ej. Rubber Ducky o BadUSB) (MITRE T1200: Hardware Additions).

**Regla de oro:** No apague el equipo afectado. Al apagar la máquina se destruye la información volátil de la memoria RAM (como las sesiones activas y los scripts que puedan seguir ejecutándose en segundo plano).

---

## Investigar

`OBJETIVO: Confirmar la intrusión física o el mal uso de identidades, dimensionar alcance de extracción de datos y preservar evidencia forense antes de intervenciones que modifiquen el sistema.`

### Triage Rápido (Primeros 15–30 Minutos)

1. **Confirmar el origen de la sospecha:**
    * ¿Ha sido un reporte visual de un compañero o una alerta automática del software de seguridad por inserción de hardware (MITRE T1200)?
    * Documentar quién reportó, cuándo, dónde y qué observó exactamente.

2. **Preservar evidencia mínima del sistema operativo (RE&CT: Access OS Logs):**
    * Extraer eventos de sistema de Windows:
        * Event ID 4624: Inicios de sesión legítimos.
        * Categoría Kernel-PnP o DriverFrameworks-UserMode: Conexiones USB.
    * NO REINICIAR la máquina. La memoria RAM contiene sesiones activas y scripts en ejecución.
    * Tomar captura de pantalla de la máquina para documentar su estado.

3. **Identificar el usuario activo (RE&CT: List Users Authenticated / MITRE T1078):**
    * Determinar qué usuario legítimo figuraba como activo en la sesión comprometida.
    * Comprobar si la sesión es local o remota.

4. **Abrir ticket de incidente crítico por canal seguro (Out-of-Band):**
    * Iniciar chat privado o llamada telefónica con el equipo de seguridad.
    * No difundir sospechas por canales públicos (email, chat corporativo) hasta tener confirmación.

### Ámbito del Ataque

1. **Determinar tiempo de exposición:**
    * ¿Cuánto tiempo se quedó el equipo desbloqueado y solo?
    * Revisar cámaras CCTV si están disponibles (coordinar con seguridad física).

2. **Comprobar ejecución de comandos automatizados locales:**
    * Revisar historial de comandos ejecutados en PowerShell (`ConsoleHost_history.txt`).
    * Buscar scripts rápidos de recolección (MITRE T1059.001: Command and Scripting Interpreter).
    * Buscar archivos recientemente modificados o creados en directorios temporales (`C:\Temp`, `C:\Users\*\AppData\Local\Temp`).

3. **Verificar actividad de almacenamiento masivo:**
    * Revisar registros de conexión de dispositivos USB (Windows: `setupapi.dev.log`, Event Viewer).
    * Comprobar si se ejecutaron scripts desde medios extraíbles.

### Determinar la Gravedad

* **CRÍTICA (Scoring 5):** El equipo comprometido pertenece a Dirección, Facturación, Ventas o TIC, y contiene accesos a servicios cloud, credenciales de bases de datos o datos confidenciales de clientes.
* **ALTA (Scoring 4):** El equipo contiene datos sensibles de negocio (márgenes, información de proveedores, listados de clientes).
* **MEDIA (Scoring 3):** El equipo contiene datos internos estándar sin acceso a sistemas críticos.
* **BAJA (Scoring 1-2):** Sin evidencia de extracción o acceso a datos sensibles; posible falsa alarma.

---

## Remediar

* **Planificar eventos de remediación:** Las acciones de contención lógica sobre el usuario se realizan en el Directorio Activo (AD). Las acciones físicas requieren la coordinación con el equipo de mantenimiento/TIC en el puesto de trabajo.
* **Considerar el momento y las compensaciones:** La desconexión física del equipo es irreversible en el corto plazo; coordinar con dirección si pertenece a un área crítica.

### Contención

`OBJETIVO: Bloquear el acceso del intruso a la sesión, evitar propagación o fuga continuada de datos, y preservar evidencia en el host.`

`OBJETIVO: Especificar herramientas y procedimientos para bloqueo de cuenta, aislamiento de red y evidencia (AD, EDR, cámaras CCTV).`

* **Bloqueo de cuentas inmediato (Prioridad Máxima — Scoring 5):**
    * RE&CT: Lock user account / MITRE T1078.002: Deshabilitar o congelar inmediatamente la cuenta del usuario afectado en el Directorio Activo.
    * Esto invalida cualquier privilegio técnico que el atacante esté explotando en ese momento.
    * Revisar si el usuario tiene acceso delegado a otros sistemas (CRM, ERP, servidores compartidos) y revocar también en esos servicios.

* **Aislamiento de la red (Prioridad Máxima — Scoring 5):**
    * RE&CT: Isolate system / MITRE T1562: Desconectar el cable de red del puesto de trabajo afectado o aislar mediante el EDR.
    * Esto evita que el atacante intente pivotar hacia servidores de aplicaciones o backups internos.
    * Si la máquina estaba ejecutando scripts, esta desconexión detiene cualquier conexión de C&C (Command & Control).

* **Preservar acceso físico a la máquina:**
    * No apagar ni reiniciar. Mantener el host encendido si es posible.
    * Bloquear físicamente el puesto de trabajo para evitar que se toquen otros periféricos.
    * Documentar el estado físico del equipo (cables, periféricos, estado de monitor).

### Erradicación

`OBJETIVO: Sanear el sistema operativo comprometido, eliminar persistencia maliciosa y restablecer credenciales de seguridad.`

`OBJETIVO: Especificar herramientas y procedimientos para análisis forense, eliminación de artefactos y rotación de secretos.`

* **Análisis forense y eliminación de persistencia (Prioridad Alta — Scoring 4):**
    * RE&CT: Remove file / MITRE T1070.004: Analizar el almacenamiento local (puede requerir herramientas forenses para no destruir logs).
    * Buscar y documentar (antes de eliminar):
        * Scripts maliciosos (`.ps1`, `.bat`, `.vbs`, `.exe`).
        * Archivos temporales sospechosos (directorios `Temp`, descargas recientes).
        * Hardware persistente dejado en la máquina (Rubber Ducky, BadUSB).
    * Guardar copias de estos artefactos para análisis posterior.
    * Eliminar definitivamente tras documentar en cadena de custodia.

* **Saneamiento de identidades (Prioridad Alta — Scoring 4):**
    * RE&CT: Revoke authentication credentials / MITRE T1531:
        * Forzar cambio de contraseña inmediato de la cuenta comprometida.
        * Revocar todos los tokens de sesión activos en servicios cloud corporativos (CRM/ERP, correo, almacenamiento compartido).
        * Si el usuario tenía autenticación multifactor (MFA) activa, revisar si fue bypass-eada.

* **Limpieza de herramientas de acceso remoto:**
    * RE&CT: Remove application / MITRE T1531:
        * Buscar cualquier herramienta de acceso remoto instalada por el atacante (TeamViewer, AnyDesk, etc.).
        * Eliminar cualquier script de backdoor.

### Recuperación

`OBJETIVO: Devolver el puesto de trabajo a producción aplicando políticas estrictas de endurecimiento (Hardening).`

`OBJETIVO: Especificar herramientas y procedimientos para reimaginar sistemas, auditoría de archivos y mitigación de raíz.`

1. **Auditoría forense completa antes de reconectar:**
    * Realizar copia forense de disco (si dispone de herramientas).
    * Auditar todos los archivos modificados desde la fecha sospechada del incidente.
    * Verificar que no haya scripts ocultos en directorios de inicio (`Startup`, `RunOnce`).

2. **Reimaginar o restaurar desde backup limpio:**
    * Si la auditoría revela múltiples cambios: considerar reimaginar el sistema operativo desde imagen golden.
    * Si solo hay cambios superficiales: restaurar desde backup limpio anterior al incidente.

3. **Mitigación de la vulnerabilidad raíz — Implementar obligatoriamente a través de Directivas de Grupo (GPOs):**
    * **Bloqueo automático de pantalla:** Configurar bloqueo automático tras 3 minutos de inactividad.
    * **Restricción de almacenamiento masivo:** Capar o bloquear completamente la capacidad de conectar USBs en puestos de trabajo ordinarios (permitir solo en TIC con justificación).
    * **Auditoría de eventos:** Registrar todos los intentos de conexión USB y cambios de usuario.

4. **Publicar Política de Escritorios Limpios y Pantallas Bloqueadas:**
    * Redactar oficialmente y comunicar política de obligado cumplimiento para todos los empleados de las sedes.
    * Incluir sanciones y procedimientos de concienciación.

---

## Comunicar

`OBJETIVO: Coordinar respuesta física corporativa, registrar pruebas de intrusión y cumplir obligaciones legales y regulatorias.`

`OBJETIVO: Especificar herramientas y procedimientos para notificación (contactos, plantillas, timing).`

1. **Notificar al Responsable de Seguridad Física / Mantenimiento:**
    * Solicitar y acotar grabaciones de cámaras CCTV de la sede correspondiente en la ventana de tiempo del incidente.
    * Documentar identidad física del intruso si es visible.
    * Confirmar horarios de acceso/salida del edificio.

2. **Informar a Dirección y Departamento Legal:**
    * Si se sospecha que el intruso salió del edificio con datos de carácter personal de terceros (clientes o autónomos): notificación obligatoria a AEPD dentro de 72 horas.
    * Evaluar si aplica denuncia a Fuerzas de Seguridad si hay evidencia de delito (sustracción, sabotaje).
    * Revisar cobertura de seguro de ciberseguridad (breach notification).

3. **Entrevistar al empleado titular del puesto:**
    * Documentar circunstancias exactas del descuido (ausencia, si dejó equipos desbloqueados, si notó algo raro).
    * Esta información es clave para la concienciación posterior.

4. **Comunicación interna limitada:**
    * No difundir detalles por canales públicos (email, chat corporativo).
    * Comunicar solo a equipos relevantes (TIC, Seguridad, Dirección, Legal).
    * Si es incidente grave: comunicado corporativo único controlado.

---

## Recursos

### Información Adicional

1. [INCIBE: Política de Pantallas Limpias y Bloqueo de Puestos de Trabajo](https://www.incibe.es/)
2. [MITRE ATT&CK: T1025 Exfiltration Over Physical Medium](https://attack.mitre.org/techniques/T1025/)
3. [MITRE ATT&CK: T1078 Valid Accounts](https://attack.mitre.org/techniques/T1078/)
4. [MITRE ATT&CK: T1200 Hardware Additions](https://attack.mitre.org/techniques/T1200/)
5. [NIST SP 800-61r2: Computer Security Incident Handling Guide](https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-61r2.pdf)
6. [RE&CT Framework: Response Actions](https://react.mitre.org/)
7. [OWASP: Physical Security](https://owasp.org/www-community/attacks/Physical_Attack)
8. [AEPD: Notificación de Brechas de Seguridad](https://www.aepd.es/)
